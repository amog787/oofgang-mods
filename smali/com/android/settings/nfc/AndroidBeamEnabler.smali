.class public Lcom/android/settings/nfc/AndroidBeamEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "AndroidBeamEnabler.java"


# instance fields
.field private final mBeamDisallowedBySystem:Z

.field private final mPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string v0, "no_outgoing_beam"

    .line 39
    invoke-static {p1, v0, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz p1, :cond_1

    .line 47
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    .line 59
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_outgoing_beam"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    sget p1, Lcom/android/settings/R$string;->android_beam_on_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 68
    :cond_3
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    sget p1, Lcom/android/settings/R$string;->android_beam_off_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    .line 55
    :cond_5
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 56
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    sget p1, Lcom/android/settings/R$string;->nfc_disabled_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return-void
.end method
