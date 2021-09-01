.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5$1;->this$1:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5$1;->this$1:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    return-void
.end method
