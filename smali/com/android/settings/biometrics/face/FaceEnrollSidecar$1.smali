.class Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;
.super Landroid/hardware/face/FaceManager$EnrollmentCallback;
.source "FaceEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->access$201(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->access$101(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->access$001(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;I)V

    return-void
.end method
