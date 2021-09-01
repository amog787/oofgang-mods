.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$11;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showContinueView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$11;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1307
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$11;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->showContinueView()V

    goto :goto_0

    .line 1310
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$11;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->showContinueView()V

    :goto_0
    return-void
.end method
