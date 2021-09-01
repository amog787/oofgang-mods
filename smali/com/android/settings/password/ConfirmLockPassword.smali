.class public Lcom/android/settings/password/ConfirmLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 68
    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic_profile:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_strong_auth_required_device_pin:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_strong_auth_required_device_password:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_strong_auth_required_work_pin:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->lockpassword_strong_auth_required_work_password:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 65
    sget-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 85
    const-class p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 91
    const-class p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
