.class public Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_network_password"


# instance fields
.field private mEditPreference:Landroidx/preference/EditTextPreference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNewPassword:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string/jumbo v0, "wifi_tether_network_password"

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    .line 188
    new-instance p2, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    const-string/jumbo v0, "wifi_tether_network_password"

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    .line 188
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    iput-object p3, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;Landroidx/preference/EditTextPreference;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Landroidx/preference/EditTextPreference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mEditPreference:Landroidx/preference/EditTextPreference;

    return-object p0
.end method

.method private static generateRandomPassword()Ljava/lang/String;
    .locals 4

    .line 167
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V
    .locals 1

    .line 173
    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 180
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 181
    sget v0, Lcom/android/settings/R$string;->wifi_hotspot_no_password_subtext:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 182
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
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

.method public getPasswordValidated(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "settings_tether_all_in_one"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "wifi_tether_network_password_2"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "wifi_tether_network_password"

    :goto_0
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

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    .line 163
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isHotspotPasswordValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 107
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x6c9

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    const/4 p1, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 114
    invoke-static {p1, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)Landroid/content/Intent;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 117
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    .line 119
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/android/settings/R$string;->save_changes:I

    .line 120
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->verizon_wifi_tether_band_warning:I

    .line 121
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x104000a

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 129
    :cond_2
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 95
    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mEditPreference:Landroidx/preference/EditTextPreference;

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsPassword(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
