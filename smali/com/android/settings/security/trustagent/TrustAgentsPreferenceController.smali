.class public Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TrustAgentsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/security/trustagent/TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    .line 72
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    .line 73
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 74
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 76
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 77
    invoke-interface {p2}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 78
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private findAvailableTrustAgents()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 147
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-virtual {v3, v1}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 156
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 155
    invoke-virtual {v4, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 157
    new-instance v4, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/settings/security/trustagent/TrustAgentInfo;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadActiveAgents()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private removeUselessExistingPreferences()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    aget-object v3, v3, v1

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 173
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveActiveAgents()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    return-void
.end method

.method private updateAgents()V
    .locals 6

    .line 99
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->findAvailableTrustAgents()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->loadActiveAgents()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->removeUselessExistingPreferences()V

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    .line 103
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    new-instance v2, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 108
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    .line 109
    invoke-virtual {v2}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 111
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v4, :cond_0

    .line 113
    new-instance v4, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 115
    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 116
    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 117
    invoke-virtual {v2}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v2}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v0, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 124
    invoke-virtual {v4, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 85
    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 180
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    .line 184
    invoke-virtual {v2}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 193
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->saveActiveAgents()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public onStart()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->updateAgents()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
