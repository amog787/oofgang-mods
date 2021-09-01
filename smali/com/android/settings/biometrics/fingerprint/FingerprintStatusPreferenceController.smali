.class public Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;
.super Lcom/android/settings/biometrics/BiometricStatusPreferenceController;
.source "FingerprintStatusPreferenceController.java"


# static fields
.field private static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"


# instance fields
.field protected final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fingerprint_settings"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getEnrollClassName()Ljava/lang/String;
    .locals 0

    .line 71
    const-class p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getSettingsClassName()Ljava/lang/String;
    .locals 0

    .line 66
    const-class p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSummaryTextEnrolled()Ljava/lang/String;
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->security_settings_fingerprint_preference_summary:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 54
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSummaryTextNoneEnrolled()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_summary_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected hasEnrolledBiometrics()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method protected isDeviceSupported()Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
