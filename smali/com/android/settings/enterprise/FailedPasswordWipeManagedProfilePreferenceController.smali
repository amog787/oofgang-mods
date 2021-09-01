.class public Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;
.super Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.source "FailedPasswordWipeManagedProfilePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getMaximumFailedPasswordsBeforeWipe()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getMaximumFailedPasswordsBeforeWipeInManagedProfile()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "failed_password_wipe_managed_profile"

    return-object p0
.end method
