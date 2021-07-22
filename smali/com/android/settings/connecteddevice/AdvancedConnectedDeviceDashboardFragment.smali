.class public Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedConnectedDeviceDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->buildControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;

    const-string v2, "default_payment_app"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {v1, p2}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 110
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance p2, Lcom/android/settings/print/PrintSettingPreferenceController;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintSettingPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 118
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 91
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->buildControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 72
    sget p0, Lcom/android/settings/R$string;->help_url_connected_devices:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedConnectedDeviceFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4f0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 77
    sget p0, Lcom/android/settings/R$xml;->connected_devices_advanced:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 84
    const-class p1, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onDataChange()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 126
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 127
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/settings/nfc/NfcUiccObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcUiccObserver;-><init>(Lcom/android/settings/nfc/NfcUiccObserver$OnNfcUiccChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 138
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;->mNfcUiccObserver:Lcom/android/settings/nfc/NfcUiccObserver;

    :cond_0
    return-void
.end method
