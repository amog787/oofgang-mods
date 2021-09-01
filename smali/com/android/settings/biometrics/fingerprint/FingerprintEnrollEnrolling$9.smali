.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1231
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1232
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
