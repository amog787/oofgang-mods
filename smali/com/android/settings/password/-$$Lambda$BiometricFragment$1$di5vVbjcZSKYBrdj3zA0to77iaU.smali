.class public final synthetic Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$di5vVbjcZSKYBrdj3zA0to77iaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/BiometricFragment$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$di5vVbjcZSKYBrdj3zA0to77iaU;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$di5vVbjcZSKYBrdj3zA0to77iaU;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationFailed$2$BiometricFragment$1()V

    return-void
.end method
