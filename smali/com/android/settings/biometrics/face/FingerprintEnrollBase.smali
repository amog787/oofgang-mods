.class public abstract Lcom/android/settings/biometrics/face/FingerprintEnrollBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyActionBarTitle()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 132
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected initViews()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 84
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onNextButtonClick()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->applyActionBarTitle()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->mToken:[B

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->mToken:[B

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->initViews()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method
