.class final Lcom/android/settings/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTargetUserId:I

.field private final mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 102
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iput-object p3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 104
    iput-object p4, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 105
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 106
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/SetNewPasswordController$Ui;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;
    .locals 8

    .line 75
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 77
    invoke-static {p3, v1, v2, p2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 79
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result p3

    if-eqz p3, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 85
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    .line 86
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v5

    .line 87
    new-instance p2, Lcom/android/settings/password/SetNewPasswordController;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string p3, "device_policy"

    .line 90
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    move-object v1, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    return-object p2
.end method

.method private getFaceChooseLockExtras()Landroid/os/Bundle;
    .locals 4

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    iget-object p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v1

    const-string p0, "minimum_quality"

    const/high16 v3, 0x10000

    .line 152
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "hide_disabled_prefs"

    const/4 v3, 0x1

    .line 154
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "has_challenge"

    .line 156
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "challenge"

    .line 157
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "for_face"

    .line 158
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 4

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    iget-object p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    const-string p0, "minimum_quality"

    const/high16 v3, 0x10000

    .line 139
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "hide_disabled_prefs"

    const/4 v3, 0x1

    .line 141
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "has_challenge"

    .line 143
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "challenge"

    .line 144
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "for_fingerprint"

    .line 145
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private isFaceDisabledByAdmin()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 118
    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFaceDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFaceChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    :goto_0
    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    invoke-interface {p0, v0}, Lcom/android/settings/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    return-void
.end method
