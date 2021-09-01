.class public Lcom/android/settings/connecteddevice/OPBluetoothCarKitDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPBluetoothCarKitDashboardFragment.java"


# static fields
.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPBluetoothCarKitDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 46
    sget p0, Lcom/android/settings/R$xml;->op_bluetooth_car_kit:I

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 1

    const-string v0, "footer_preference"

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDashboardFragment;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDashboardFragment;->updateFooterPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    const-class p1, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 59
    const-class p1, Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 60
    const-class p1, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDashboardFragment;->initPreferencesFromPreferenceScreen()V

    .line 27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "need_search_icon_in_action_bar"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method

.method updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 0

    .line 40
    sget p0, Lcom/android/settings/R$string;->oneplus_add_bluetooth_car_kit_summary:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
