.class public Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;
.super Lcom/android/settings/biometrics/face/FingerprintEnrollBase;
.source "FaceUnlockEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 84
    new-instance v0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result p0

    return p0
.end method

.method private adjustForGuideImage()V
    .locals 2

    .line 256
    sget v0, Lcom/android/settings/R$id;->img_faceunlock_guide:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 257
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 262
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustTitleSize()V
    .locals 2

    .line 340
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget v0, Lcom/android/settings/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private bindFaceUnlockService()V
    .locals 4

    const-string v0, "FaceUnlockIntroduction"

    .line 108
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.faceunlock"

    const-string v3, "com.oneplus.faceunlock.FaceSettingService"

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p0, "Start bind oneplus face unlockservice"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Bind oneplus face unlockservice exception"

    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isFaceAdded()Z
    .locals 5

    const-string v0, "FaceUnlockIntroduction"

    .line 125
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    .line 130
    :try_start_0
    invoke-interface {p0, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start check face state:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start check face State RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 330
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    const-string v0, "FaceUnlockIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 279
    sget v0, Lcom/android/settings/R$id;->fingerprint_next_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected initViews()V
    .locals 3

    .line 209
    invoke-super {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->initViews()V

    .line 211
    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_message_setup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    .line 217
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    sget v2, Lcom/android/settings/R$string;->oneplus_face_unlock_add_title:I

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    .line 219
    sget v2, Lcom/android/settings/R$string;->oneplus_faceunlock_introduction_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    sget v0, Lcom/android/settings/R$id;->rich_warning_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    sget v2, Lcom/android/settings/R$string;->oneplus_use_faceunlock_and_fingerprint_settings_title:I

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    .line 224
    sget v2, Lcom/android/settings/R$string;->oneplus_use_faceunlock_and_fingerprint_settings_summary:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 227
    :cond_1
    sget v2, Lcom/android/settings/R$string;->oneplus_face_setup_unlock_settings_title:I

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    .line 228
    sget v2, Lcom/android/settings/R$string;->oneplus_face_setup_unlock_settings_summary:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    :goto_0
    sget v0, Lcom/android/settings/R$string;->oneplus_face_unlock_add_title:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 234
    sget v0, Lcom/android/settings/R$id;->fingerprint_cancel_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget v1, Lcom/android/settings/R$string;->oneplus_password_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 238
    sget v0, Lcom/android/settings/R$id;->functional_terms:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    new-instance v1, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;-><init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->fingerprint_cancel_button:I

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    .line 273
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "wasLockScreenPresent"

    .line 186
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 189
    :goto_0
    sget p1, Lcom/android/settings/R$layout;->op_face_unlock_introduction:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->adjustTitleSize()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->adjustForGuideImage()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 3

    const/4 v0, 0x0

    .line 291
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    .line 292
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x0

    .line 294
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 297
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPFaceUnlockSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->unbindFaceUnlockService()V

    .line 149
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->bindFaceUnlockService()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string/jumbo v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    .line 252
    sget v0, Lcom/android/settings/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
