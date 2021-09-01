.class final enum Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 364
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget v1, Lcom/android/settings/R$string;->lockpattern_retry_button_text:I

    const-string v2, "Retry"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 365
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget v1, Lcom/android/settings/R$string;->lockpattern_retry_button_text:I

    const-string v2, "RetryDisabled"

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 366
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 363
    sget-object v5, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v5, v1, v3

    sget-object v3, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v3, v1, v4

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 374
    iput p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 375
    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .line 363
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .line 363
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
