.class public final synthetic Lcom/android/settings/biometrics/fingerprint/-$$Lambda$DHTjUcEj_0xJoKUWFRXcWA9fscA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$DHTjUcEj_0xJoKUWFRXcWA9fscA;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$DHTjUcEj_0xJoKUWFRXcWA9fscA;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method
