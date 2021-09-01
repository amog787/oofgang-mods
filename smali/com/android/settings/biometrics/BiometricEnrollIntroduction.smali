.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricEnrollIntroduction.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;


# instance fields
.field private mBiometricUnlockDisabledByAdmin:Z

.field protected mConfirmingCredentials:Z

.field private mErrorText:Landroid/widget/TextView;

.field private mHasPassword:Z

.field protected mNextClicked:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 5

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge()J

    move-result-wide v1

    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    .line 214
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    .line 216
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "has_challenge"

    .line 217
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "challenge"

    .line 218
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    .line 221
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :cond_0
    invoke-virtual {p0, v0, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchNextEnrollingActivity([B)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 231
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 232
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 235
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 194
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 195
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected abstract checkMaxEnrolled()I
.end method

.method protected abstract getChallenge()J
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    const-string v2, "lockscreen.password_type"

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "show_options_button"

    .line 246
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0

    .line 251
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract getConfirmLockTitleResId()I
.end method

.method protected abstract getDescriptionResDisabledByAdmin()I
.end method

.method protected abstract getEnrollingIntent()Landroid/content/Intent;
.end method

.method protected abstract getErrorTextView()Landroid/widget/TextView;
.end method

.method protected abstract getExtraKeyForBiometric()Ljava/lang/String;
.end method

.method protected abstract getHeaderResDefault()I
.end method

.method protected abstract getHeaderResDisabledByAdmin()I
.end method

.method protected abstract getLayoutResource()I
.end method

.method protected initViews()V
    .locals 2

    .line 302
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews()V

    .line 304
    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getDescriptionResDisabledByAdmin()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected abstract isDisabledByAdmin()Z
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_6

    .line 260
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v1, "hw_auth_token"

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    if-ne p2, v2, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 267
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 269
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 270
    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    return-void

    .line 273
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 277
    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 279
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 280
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_6

    .line 286
    sget v0, Lcom/android/settings/R$anim;->sud_slide_back_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_back_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 288
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 0

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "theme"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isDisabledByAdmin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getLayoutResource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 148
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDisabledByAdmin()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getHeaderResDefault()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getErrorTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    .line 156
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 157
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 159
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 162
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchChooseLock()V

    goto :goto_1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_3

    .line 166
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getConfirmLockTitleResId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchConfirmLock(IJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchNextEnrollingActivity([B)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 173
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 296
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 190
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
