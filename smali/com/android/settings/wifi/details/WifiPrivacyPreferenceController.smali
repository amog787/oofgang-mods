.class public Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiPrivacyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field private static final KEY_WIFI_PRIVACY:Ljava/lang/String; = "privacy"

.field private static final PREF_RANDOMIZATION_NONE:I = 0x1

.field private static final PREF_RANDOMIZATION_PERSISTENT:I


# instance fields
.field private mIsEphemeral:Z

.field private mIsPasspoint:Z

.field private mPreference:Landroidx/preference/Preference;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "privacy"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static translateMacRandomizedValueToPrefValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static translatePrefValueToMacRandomizedValue(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 0

    .line 148
    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result p0

    .line 149
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method getRandomizationValue()I
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 116
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
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

.method public bridge synthetic onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings/wifi/WifiDialog;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 99
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 109
    :cond_0
    check-cast p1, Landroidx/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eq v1, v0, :cond_1

    .line 161
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 162
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsEphemeral(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    return-void
.end method

.method public setIsPasspoint(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    return-void
.end method

.method public setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 84
    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->getRandomizationValue()I

    move-result v1

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 90
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 91
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 92
    sget p0, Lcom/android/settings/R$string;->wifi_privacy_settings_ephemeral_summary:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
