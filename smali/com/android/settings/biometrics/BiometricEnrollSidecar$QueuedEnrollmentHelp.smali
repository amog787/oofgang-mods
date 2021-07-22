.class Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEnrollmentHelp"
.end annotation


# instance fields
.field helpMsgId:I

.field helpString:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;)V

    .line 79
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpMsgId:I

    .line 80
    iput-object p3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpString:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpMsgId:I

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method
