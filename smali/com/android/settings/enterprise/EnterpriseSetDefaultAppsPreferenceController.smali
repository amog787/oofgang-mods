.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseSetDefaultAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    return-void
.end method

.method private getNumberOfEnterpriseSetDefaultApps()I
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 64
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 65
    iget-object v8, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 66
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 67
    invoke-virtual {v7}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v7

    .line 66
    invoke-interface {v8, v9, v7}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "number_enterprise_set_default_apps"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result v0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->enterprise_privacy_number_packages:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 47
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
