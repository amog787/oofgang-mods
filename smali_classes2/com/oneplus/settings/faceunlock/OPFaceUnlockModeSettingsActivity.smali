.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFaceUnlockModeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mFromSetupWizard:Z

.field private mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPressPowerkey:Landroid/view/View;

.field private mPressPowerkeyButton:Landroid/widget/RadioButton;

.field private mSwipeUp:Landroid/view/View;

.field private mSwipeUpButton:Landroid/widget/RadioButton;

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    return-void
.end method

.method private adjustTitleSize()V
    .locals 2

    .line 165
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget v0, Lcom/android/settings/R$id;->op_faceunlock_mode_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setAnimationResource()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_swipe_up_dark.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_face_unlock_by_use_power_key_dark.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setModeSelected()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getUnlockMode()I
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x6

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 103
    sget v0, Lcom/android/settings/R$id;->key_faceunlock_swipe_up_mode:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcom/android/settings/R$id;->key_faceunlock_use_power_button_mode:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    goto :goto_0

    .line 107
    :cond_1
    sget v0, Lcom/android/settings/R$id;->done_button:I

    if-ne p1, v0, :cond_5

    .line 108
    iget-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz p1, :cond_4

    .line 109
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    if-eqz v0, :cond_2

    const-string v1, "hw_auth_token"

    .line 111
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 113
    :cond_2
    iget v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_3

    const-string v1, "android.intent.extra.USER_ID"

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const/4 v0, 0x6

    .line 116
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "enter_faceunlock_mode_settings_from_suw"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    .line 44
    iget-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz p1, :cond_0

    .line 45
    sget p1, Lcom/android/settings/R$style;->SetupOnePlusPasswordTheme:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 47
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->op_faceunlock_mode_set_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    sget p1, Lcom/android/settings/R$id;->key_faceunlock_swipe_up_mode:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUp:Landroid/view/View;

    .line 50
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget p1, Lcom/android/settings/R$id;->key_faceunlock_use_power_button_mode:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkey:Landroid/view/View;

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget p1, Lcom/android/settings/R$id;->key_faceunlock_swipe_up_mode_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    .line 54
    sget p1, Lcom/android/settings/R$id;->key_faceunlock_use_power_button_mode_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    .line 55
    sget p1, Lcom/android/settings/R$id;->op_single_lottie_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    sget p1, Lcom/android/settings/R$id;->done_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    .line 57
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-boolean p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->next_label:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->adjustTitleSize()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->releaseAnim()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->stopAnim()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "pop_up_face_unlock"

    .line 143
    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 144
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setModeSelected()V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->stopAnim()V

    .line 146
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setAnimationResource()V

    .line 147
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public stopAnim()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
