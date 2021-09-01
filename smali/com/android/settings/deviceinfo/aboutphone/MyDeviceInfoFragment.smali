.class public Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MyDeviceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 236
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;

    sget v1, Lcom/android/settings/R$xml;->my_device_info:I

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/android/settings/deviceinfo/ManualPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/ManualPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/android/settings/deviceinfo/UptimePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/deviceinfo/UptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Lcom/android/settings/deviceinfo/SoftwareVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/SoftwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSizePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/StorageSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Lcom/oneplus/settings/OPCarrierConfigVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPCarrierConfigVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p1, Lcom/oneplus/settings/product/OPProductInfoPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/product/OPProductInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p1, Lcom/oneplus/settings/product/OPVersionInfoController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/product/OPVersionInfoController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p1, Lcom/oneplus/settings/product/OPDDRInfoController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/product/OPDDRInfoController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p1, Lcom/oneplus/settings/product/OPMemoryInfoController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/product/OPMemoryInfoController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance p1, Lcom/oneplus/settings/aboutphone/OPSerialNumberPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/aboutphone/OPSerialNumberPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance p1, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/aboutphone/OPHardwareVersionInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance p1, Lcom/oneplus/settings/aboutphone/OPKernelVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/aboutphone/OPKernelVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance p1, Lcom/oneplus/settings/aboutphone/OPUptimePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/aboutphone/OPUptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance p1, Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p1, Lcom/android/settings/deviceinfo/aboutphone/OPLastFactoryResetPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/aboutphone/OPLastFactoryResetPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p1, Lcom/android/settings/deviceinfo/WarrantCodePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/WarrantCodePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initHeader()V
    .locals 7

    .line 189
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "my_device_info_header"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$bool;->config_show_device_header_in_device_info:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez v1, :cond_0

    return-void

    .line 196
    :cond_0
    sget v1, Lcom/android/settings/R$id;->entity_header:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 200
    invoke-static {v2, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    const/4 v4, 0x0

    .line 202
    invoke-virtual {v1, v4, v4}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    const-string v5, "icon_id"

    .line 206
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 211
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 210
    invoke-static {v3, v5}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 212
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v3, v5}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 213
    invoke-virtual {v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_1
    const/4 p0, 0x1

    .line 217
    invoke-virtual {v1, v2, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 219
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
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

    .line 133
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 103
    sget p0, Lcom/android/settings/R$string;->help_uri_about:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MyDeviceInfoFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 128
    sget p0, Lcom/android/settings/R$xml;->my_device_info:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 109
    const-class p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->setHost(Landroidx/fragment/app/Fragment;)V

    .line 110
    const-class p1, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;)V

    .line 111
    const-class p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method

.method public onSetDeviceNameConfirm(Z)V
    .locals 1

    .line 229
    const-class v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->updateDeviceName(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->initHeader()V

    return-void
.end method

.method public showDeviceNameWarningDialog(Ljava/lang/String;)V
    .locals 0

    .line 225
    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V

    return-void
.end method
