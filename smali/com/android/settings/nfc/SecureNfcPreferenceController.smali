.class public Lcom/android/settings/nfc/SecureNfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecureNfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 50
    new-instance v0, Lcom/android/settings/nfc/SecureNfcEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/nfc/SecureNfcEnabler;-><init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v0, 0x3

    if-nez p0, :cond_0

    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
