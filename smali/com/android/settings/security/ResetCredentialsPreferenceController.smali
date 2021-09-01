.class public Lcom/android/settings/security/ResetCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "ResetCredentialsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "no_config_credentials"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Landroid/security/KeyStore;

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/security/ResetCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "credentials_reset"

    return-object p0
.end method

.method public onResume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
