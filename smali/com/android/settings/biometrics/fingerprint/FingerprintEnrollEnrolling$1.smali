.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showEnrollNoteDialog()V
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

    .line 458
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 460
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 461
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->delayCallFingerprintService()V

    return-void
.end method
