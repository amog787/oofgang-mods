.class public Lcom/android/settings/accounts/AccountRestrictionHelper;
.super Ljava/lang/Object;
.source "AccountRestrictionHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getEnforcedAdmin(Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/AccountRestrictionHelper;->getManagedUserId(I)I

    move-result p0

    .line 88
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 90
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 91
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, p2, p1, p0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getManagedUserId(I)I
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 98
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 99
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private isOrganizationOwnedDevice()Z
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method

.method public static showAccount([Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 121
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 122
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public createAccessiblePreferenceCategory(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;
    .locals 0

    .line 108
    new-instance p0, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/settings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "no_remove_managed_profile"

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountRestrictionHelper;->isOrganizationOwnedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->getEnforcedAdmin(Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 60
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
