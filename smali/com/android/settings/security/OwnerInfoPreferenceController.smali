.class public Lcom/android/settings/security/OwnerInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;
    }
.end annotation


# static fields
.field static final KEY_OWNER_INFO:Ljava/lang/String; = "owner_info_settings"

.field private static final MY_USER_ID:I


# instance fields
.field private mLastClickTime:J

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private final mParent:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    .line 57
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "owner_info_settings"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "owner_info_settings"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroidx/fragment/app/Fragment;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLastClickTime:J

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isDeviceOwnerInfoEnabled()Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method

.method isOwnerInfoEnabled()Z
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method

.method public updateEnableState()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 104
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getOwnerInfo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->owner_info_settings_summary:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
