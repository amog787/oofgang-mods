.class public Lcom/android/settings/users/UserCapabilities;
.super Ljava/lang/Object;
.source "UserCapabilities.java"


# instance fields
.field mCanAddGuest:Z

.field mCanAddRestrictedProfile:Z

.field mCanAddUser:Z

.field mDisallowAddUser:Z

.field mDisallowAddUserSetByAdmin:Z

.field mDisallowSwitchUser:Z

.field mEnabled:Z

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mIsAdmin:Z

.field mIsGuest:Z

.field mUserSwitcherEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;
    .locals 4

    const-string/jumbo v0, "user"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 48
    new-instance v1, Lcom/android/settings/users/UserCapabilities;

    invoke-direct {v1}, Lcom/android/settings/users/UserCapabilities;-><init>()V

    .line 50
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    .line 57
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    const-string v0, "device_policy"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 61
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 64
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    return-object v1

    .line 51
    :cond_3
    :goto_0
    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    return-object v1
.end method


# virtual methods
.method public disallowAddUser()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    return p0
.end method

.method public disallowAddUserSetByAdmin()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    return p0
.end method

.method public getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method public isAdmin()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowSwitchUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUserSetByAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserSwitcherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAddUserCapabilities(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "user"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_add_user"

    .line 71
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 73
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 76
    iget-object v2, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    .line 77
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    .line 79
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 80
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v1, :cond_4

    .line 82
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    .line 85
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v1, :cond_6

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "add_users_when_locked"

    .line 85
    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    move p1, v4

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v3

    .line 87
    :goto_4
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    const-string p1, "no_user_switch"

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    return-void
.end method
