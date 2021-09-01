.class public Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectedDeviceDashboardFragment.java"


# static fields
.field static final KEY_AVAILABLE_DEVICES:Ljava/lang/String; = "available_device_list"

.field static final KEY_CONNECTED_DEVICES:Ljava/lang/String; = "connected_device_list"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->connected_devices:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 94
    sget p0, Lcom/android/settings/R$string;->help_url_connected_devices:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConnectedDeviceFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2eb

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 99
    sget p0, Lcom/android/settings/R$xml;->connected_devices:I

    return p0
.end method

.method protected isParalleledControllers()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "settings_ui"

    const-string v0, "bt_near_by_suggestion_enabled"

    const/4 v1, 0x1

    .line 105
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 107
    const-class v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 108
    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 111
    const-class v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 112
    const-class v0, Lcom/android/settings/slices/SlicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SlicePreferenceController;

    if-eqz p1, :cond_0

    .line 113
    sget p1, Lcom/android/settings/R$string;->config_nearby_devices_slice_uri:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 112
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    return-void
.end method
