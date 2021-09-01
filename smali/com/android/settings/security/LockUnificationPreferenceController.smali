.class public Lcom/android/settings/security/LockUnificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockUnificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHost:Lcom/android/settings/security/SecuritySettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mProfileUserId:I

.field private mRequireNewDevicePassword:Z

.field private final mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 88
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 89
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 90
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 92
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    sget p2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 94
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 95
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method private promptForNewDeviceLockAndThenUnify()V
    .locals 3

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string v2, "unification_profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string v2, "unification_profile_credential"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 217
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->lock_settings_picker_title:I

    .line 218
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 220
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 221
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private unifyKeepingDeviceLock()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    return-void
.end method

.method private unifyLocks()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mRequireNewDevicePassword:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->promptForNewDeviceLockAndThenUnify()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyKeepingDeviceLock()V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 198
    iput-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 202
    iput-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_2
    return-void
.end method

.method private ununifyLocks()V
    .locals 3

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 167
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 168
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->lock_settings_picker_title_profile:I

    .line 169
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 171
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 172
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "unification"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "unification"

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "password"

    const/4 v2, -0x1

    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    .line 150
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 151
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    return v0

    :cond_0
    const/16 v3, 0x81

    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    .line 156
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 157
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 111
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result p1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mRequireNewDevicePassword:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->startUnification()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 122
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x82

    .line 123
    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    :cond_2
    :goto_0
    return p2
.end method

.method startUnification()V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title_profile:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 180
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 181
    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    .line 137
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string v1, "no_unified_password"

    .line 140
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method
