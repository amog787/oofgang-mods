.class public Lcom/android/settings/password/ConfirmDeviceCredentialUtils;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialUtils.java"


# direct methods
.method public static checkForPendingIntent(Landroid/app/Activity;)V
    .locals 8

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 40
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 47
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/IntentSender;

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 50
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 60
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2, p3}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    .line 64
    :goto_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_1
    return-void
.end method
