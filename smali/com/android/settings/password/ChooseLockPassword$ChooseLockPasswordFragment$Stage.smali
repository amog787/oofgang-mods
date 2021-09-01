.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForFace:I

.field public final alphaHintForFingerprint:I

.field public final alphaMessage:I

.field public final alphaMessageForBiometrics:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForFace:I

.field public final numericHintForFingerprint:I

.field public final numericMessage:I

.field public final numericMessageForBiometrics:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 275
    new-instance v14, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget v8, Lcom/android/settings/R$string;->lockpassword_choose_your_screen_lock_header:I

    sget v9, Lcom/android/settings/R$string;->lockpassword_choose_your_password_message:I

    sget v10, Lcom/android/settings/R$string;->lock_settings_picker_biometrics_added_security_message:I

    sget v11, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_message:I

    sget v12, Lcom/android/settings/R$string;->lock_settings_picker_biometrics_added_security_message:I

    sget v13, Lcom/android/settings/R$string;->next_label:I

    const-string v1, "Introduction"

    const/4 v2, 0x0

    move-object v0, v14

    move v3, v8

    move v4, v8

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v14, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 294
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget v20, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    sget v23, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    sget v28, Lcom/android/settings/R$string;->lockpassword_confirm_label:I

    const-string v16, "NeedToConfirm"

    const/16 v17, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    move/from16 v18, v20

    move/from16 v19, v20

    move/from16 v21, v23

    move/from16 v22, v23

    invoke-direct/range {v15 .. v28}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 307
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget v6, Lcom/android/settings/R$string;->lockpassword_confirm_passwords_dont_match:I

    sget v9, Lcom/android/settings/R$string;->lockpassword_confirm_pins_dont_match:I

    sget v14, Lcom/android/settings/R$string;->lockpassword_confirm_label:I

    const-string v2, "ConfirmWrong"

    const/4 v3, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    move v4, v6

    move v5, v6

    move v7, v9

    move v8, v9

    invoke-direct/range {v1 .. v14}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 273
    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIII)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 325
    iput p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 326
    iput p4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    .line 327
    iput p5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    .line 329
    iput p6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 330
    iput p7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    .line 331
    iput p8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    .line 333
    iput p9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    .line 334
    iput p10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    .line 335
    iput p11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    .line 336
    iput p12, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    .line 337
    iput p13, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 273
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 273
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method


# virtual methods
.method public getHint(ZI)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-ne p2, v1, :cond_0

    .line 363
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    return p0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 365
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    return p0

    .line 367
    :cond_1
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    return p0

    :cond_2
    if-ne p2, v1, :cond_3

    .line 371
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    return p0

    :cond_3
    if-ne p2, v0, :cond_4

    .line 373
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    return p0

    .line 375
    :cond_4
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    return p0
.end method

.method public getMessage(ZI)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 382
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    :goto_0
    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 384
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    :goto_1
    return p0
.end method
