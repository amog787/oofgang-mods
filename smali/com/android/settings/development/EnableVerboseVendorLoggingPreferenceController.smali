.class public Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "EnableVerboseVendorLoggingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final DBG:Z


# instance fields
.field private mDumpstateHalVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EnableVerboseVendorLoggingPreferenceController"

    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    return-void
.end method


# virtual methods
.method getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    :try_start_0
    invoke-static {v0}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;->getService(Z)Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;

    move-result-object v1

    .line 142
    iput v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_0

    .line 149
    :try_start_1
    invoke-static {v0}, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;->getService(Z)Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    :cond_1
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_verbose_vendor_logging"

    return-object p0
.end method

.method getVerboseLoggingEnabled()Z
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 118
    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v3, 0x1

    if-ge p0, v3, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    :try_start_0
    check-cast v0, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v0}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;->getVerboseLoggingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 130
    sget-boolean v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVerboseLoggingEnabled fail: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 119
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz p0, :cond_3

    const-string p0, "getVerboseLoggingEnabled not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public isAvailable()Z
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceV1_1ServiceAvailable()Z

    move-result p0

    return p0
.end method

.method isIDumpstateDeviceV1_1ServiceAvailable()Z
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    sget-boolean v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    const-string v2, "IDumpstateDevice service is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 91
    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method setVerboseLoggingEnabled(Z)V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    if-eqz v0, :cond_2

    .line 98
    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    :try_start_0
    check-cast v0, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0, p1}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice;->setVerboseLoggingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    sget-boolean p1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVerboseLoggingEnabled fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz p0, :cond_3

    const-string p0, "setVerboseLoggingEnabled not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getVerboseLoggingEnabled()Z

    move-result p1

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
