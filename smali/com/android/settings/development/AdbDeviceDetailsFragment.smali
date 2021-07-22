.class public Lcom/android/settings/development/AdbDeviceDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdbDeviceDetailsFragment.java"


# instance fields
.field private mPairedDevice:Landroid/debug/PairDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;

    iget-object v2, p0, Lcom/android/settings/development/AdbDeviceDetailsFragment;->mPairedDevice:Landroid/debug/PairDevice;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;-><init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/android/settings/development/AdbDeviceDetailsActionController;

    iget-object v2, p0, Lcom/android/settings/development/AdbDeviceDetailsFragment;->mPairedDevice:Landroid/debug/PairDevice;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settings/development/AdbDeviceDetailsActionController;-><init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;

    iget-object v2, p0, Lcom/android/settings/development/AdbDeviceDetailsFragment;->mPairedDevice:Landroid/debug/PairDevice;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settings/development/AdbDeviceDetailsFingerprintController;-><init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdbDeviceDetailsFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$xml;->adb_device_details_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "paired_device"

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/debug/PairDevice;

    iput-object v0, p0, Lcom/android/settings/development/AdbDeviceDetailsFragment;->mPairedDevice:Landroid/debug/PairDevice;

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method
