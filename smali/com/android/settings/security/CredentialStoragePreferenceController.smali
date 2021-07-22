.class public Lcom/android/settings/security/CredentialStoragePreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "CredentialStoragePreferenceController.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "no_config_credentials"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "credential_storage_type"

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    sget p0, Lcom/android/settings/R$string;->credential_storage_type_hardware:I

    goto :goto_0

    .line 47
    :cond_0
    sget p0, Lcom/android/settings/R$string;->credential_storage_type_software:I

    .line 45
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
