.class public interface abstract Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;
.super Ljava/lang/Object;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEnrollmentError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onEnrollmentHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onEnrollmentProgressChange(II)V
.end method
