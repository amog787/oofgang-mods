.class public Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
.super Lcom/android/settings/biometrics/BiometricErrorDialog;
.source "FaceEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
    .locals 3

    .line 62
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg"

    .line 64
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_id"

    .line 65
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e6

    return p0
.end method

.method public getOkButtonTextResId()I
    .locals 0

    .line 82
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_dialog_ok:I

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 77
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_error_dialog_title:I

    return p0
.end method
