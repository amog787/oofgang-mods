.class Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling$1;
.super Ljava/lang/Object;
.source "SetupFingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;->showEnrollNoteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 78
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->delayCallFingerprintService()V

    return-void
.end method
