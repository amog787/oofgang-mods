.class public Lcom/android/settings/development/OemUnlockPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# instance fields
.field private isCarrierDevices:Z

.field private isUimLocked:Z

.field private mActivity:Landroid/app/Activity;

.field private final mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mOemLockManager:Landroid/service/oemlock/OemLockManager;

.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mSimlockConnection:Landroid/content/ServiceConnection;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

.field private uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 5

    .line 83
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x49

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 73
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [I

    const/16 v2, 0xe7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isCarrierDevices:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    .line 309
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OemUnlockPreferenceController$1;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mSimlockConnection:Landroid/content/ServiceConnection;

    .line 327
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OemUnlockPreferenceController$2;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    const-string v1, "ro.oem_unlock_supported"

    const-string v2, "-9999"

    .line 85
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v4, "OemUnlockPreferenceController"

    if-nez v1, :cond_2

    .line 87
    iput-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    const-string v1, "oem_unlock not supported."

    .line 88
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v1, "oem_lock"

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/oemlock/OemLockManager;

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    :goto_2
    const-string/jumbo v1, "user"

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "phone"

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 94
    iput-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_3

    .line 98
    :cond_3
    iput-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    goto :goto_4

    .line 96
    :cond_4
    :goto_3
    new-instance p3, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p3, p2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 102
    :goto_4
    iput-object p2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mActivity:Landroid/app/Activity;

    .line 103
    invoke-static {p1}, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLockServiceEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 104
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 105
    new-instance p3, Landroid/content/ComponentName;

    const-string v1, "com.qualcomm.qti.uim"

    const-string v2, "com.qualcomm.qti.uim.RemoteSimLockService"

    invoke-direct {p3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mSimlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bind RemoteSimLockService ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_5
    const-string p1, "isSimLockEnable not exist."

    .line 113
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-boolean v3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    :goto_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/development/OemUnlockPreferenceController;Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/development/OemUnlockPreferenceController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/development/OemUnlockPreferenceController;)Landroid/app/Activity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    if-nez p0, :cond_0

    .line 260
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUssOnly()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleDeveloperOptionsToggled()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, "no_factory_reset"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isUimLockServiceEnable(Landroid/content/Context;)Z
    .locals 4

    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.qti.uim"

    const-string v3, "com.qualcomm.qti.uim.RemoteSimLockService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 299
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 2

    .line 221
    sget v0, Lcom/android/settings/R$string;->oem_unlock_enable_summary:I

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sget v0, Lcom/android/settings/R$string;->oem_unlock_enable_disabled_summary_bootloader_unlocked:I

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    sget v0, Lcom/android/settings/R$string;->oem_unlock_enable_disabled_summary_sim_locked_device:I

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    sget v0, Lcom/android/settings/R$string;->oem_unlock_enable_disabled_summary_connectivity_or_locked:I

    .line 233
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method confirmEnableOemUnlock()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->show(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oem_unlock_enable"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 136
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBootloaderUnlocked()Z
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p0}, Landroid/service/oemlock/OemLockManager;->isDeviceOemUnlocked()Z

    move-result p0

    return p0
.end method

.method isOemUnlockAllowedByUserAndCarrier()Z
    .locals 2

    .line 284
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowedByCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_factory_reset"

    .line 286
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isOemUnlockedAllowed()Z
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p3, 0x0

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p0, p3}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return p3
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->handleDeveloperOptionsToggled()V

    return-void
.end method

.method public onOemUnlockConfirmed()V
    .locals 1

    .line 202
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    return-void
.end method

.method public onOemUnlockDismissed()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 154
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/development/OemUnlockPreferenceController;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {p1, p2}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/OemLockInfoDialog;->show(Landroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    sget v0, Lcom/android/settings/R$string;->oem_unlock_enable:I

    .line 269
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public unBindSimlockConnection()V
    .locals 2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->deregisterCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mSimlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, "OemUnlockPreferenceController"

    const-string v0, "unbindService mSimlockConnection."

    .line 129
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockedAllowed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateOemUnlockSettingDescription()V

    .line 173
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "no_factory_reset"

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
