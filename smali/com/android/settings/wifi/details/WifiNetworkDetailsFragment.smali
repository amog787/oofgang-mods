.class public Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkDetailsFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

.field private mWifiDialogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 132
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    new-instance v6, Landroid/os/Handler;

    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-object v4, p1

    move-object v5, p0

    .line 132
    invoke-static/range {v2 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->newInstance(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/wifi/details/AddDevicePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details/AddDevicePreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->init(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/details/AddDevicePreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 146
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->setIsEphemeral(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 154
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 153
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->setIsPasspoint(Z)V

    .line 155
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x25b

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkDetailsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$xml;->wifi_network_details_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 65
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 105
    sget v0, Lcom/android/settings/R$string;->wifi_modify:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10804df

    .line 106
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 107
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canModifyNetwork()Z

    move-result p1

    if-nez p1, :cond_1

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 116
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v1
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 168
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    :cond_0
    return-void
.end method
