.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    }
.end annotation


# instance fields
.field private mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    return-void
.end method

.method private getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 154
    instance-of v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    if-eqz v0, :cond_0

    .line 155
    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 54
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget v0, Lcom/android/settings/R$anim;->confirm_credential_biometric_transition_exit:I

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 62
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 71
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget v0, Lcom/android/settings/R$style;->Theme_ConfirmDeviceCredentialsDark:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 75
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 79
    :cond_1
    sget v0, Lcom/android/settings/R$style;->OnePlusPasswordTheme:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 80
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 82
    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 85
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mNeedShowAppBar:Z

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget v0, Lcom/android/settings/R$string;->feature_not_support_split_screen:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 100
    sget v0, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 103
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    if-nez p1, :cond_4

    .line 105
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_1

    :cond_4
    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_6
    if-eqz p1, :cond_7

    move v1, v3

    .line 123
    :cond_7
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ConfirmDeviceCredentialBaseActivity"

    const-string v1, "Invalid user Id supplied"

    .line 65
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 174
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 175
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 176
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 163
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 181
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    return-void
.end method
