.class public Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkDetailsFragment2.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;


# instance fields
.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

.field private mWifiDialogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    return-void
.end method

.method private setupNetworksDetailTracker()V
    .locals 14

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetworkDetailsFrg2{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 237
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance v8, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2$1;-><init>(Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;Ljava/time/ZoneId;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 248
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 249
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 250
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/NetworkScoreManager;

    new-instance v6, Landroid/os/Handler;

    .line 251
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 252
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v13, "key_chosen_wifientry_key"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 245
    invoke-static/range {v1 .. v13}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    .line 168
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->setupNetworksDetailTracker()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 175
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v5, Landroid/os/Handler;

    .line 182
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 184
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    .line 177
    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    .line 186
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 196
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/android/settings/wifi/details2/WifiMeteredPreferenceController2;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/wifi/details2/WifiMeteredPreferenceController2;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 200
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 205
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v3, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    return-object p0
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

    const-string p0, "WifiNetworkDetailsFrg2"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$xml;->wifi_network_details_fragment2:I

    return p0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 126
    sget v0, Lcom/android/settings/R$string;->wifi_modify:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 127
    sget v1, Lcom/android/settings/R$drawable;->op_ic_edit:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 128
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 87
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 161
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canModifyNetwork()Z

    move-result p1

    if-nez p1, :cond_3

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-nez p1, :cond_2

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 143
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 147
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 148
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object p1, v2

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, p1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object p1, v0

    .line 155
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_1
    return v1
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    .line 223
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    .line 224
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshPreferences()V
    .locals 3

    .line 263
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 264
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 269
    instance-of v2, v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    return-void
.end method
