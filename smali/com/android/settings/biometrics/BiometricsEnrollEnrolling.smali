.class public abstract Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricsEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field protected mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getFinishIntent()Landroid/content/Intent;
.end method

.method protected abstract getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end method

.method protected launchFinish([B)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x26000000

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    .line 121
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 122
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 95
    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 97
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->shouldStartAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->startEnrollment()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract shouldStartAutomatically()Z
.end method

.method public startEnrollment()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    .line 107
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    return-void
.end method
