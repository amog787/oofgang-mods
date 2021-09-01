.class public Lcom/android/settings/users/AddUserWhenLockedPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AddUserWhenLockedPreferenceController.java"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUserCaps:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 36
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->disallowAddUser()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->disallowAddUserSetByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    return v1

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 69
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "add_users_when_locked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "add_users_when_locked"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 43
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 46
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->disallowAddUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 50
    iget-object p0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
