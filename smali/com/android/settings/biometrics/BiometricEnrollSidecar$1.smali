.class Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;
.super Ljava/lang/Object;
.source "BiometricEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    return-void
.end method
