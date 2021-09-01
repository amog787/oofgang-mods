.class public Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DefaultPaymentSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

.field private mSettingObserver:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 86
    new-instance v0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mSettingObserver:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc.hce"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x3

    return p0
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mSettingObserver:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

    if-eqz v0, :cond_1

    .line 121
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->resume()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mSettingObserver:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;

    if-eqz v0, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_1
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 152
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_6

    if-nez p1, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 164
    sget p0, Lcom/android/settings/R$string;->nfc_and_payment_settings_payment_off_nfc_off_summary:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    if-eqz v0, :cond_4

    const-string v2, "payment"

    .line 171
    invoke-virtual {v0, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    sget p0, Lcom/android/settings/R$string;->nfc_and_payment_settings_no_payment_installed_summary:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 174
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "nfc_payment_default_component"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 184
    iget-object p0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 186
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 189
    :cond_5
    sget p0, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
