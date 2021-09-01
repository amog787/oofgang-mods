.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "EnterpriseSetDefaultAppsListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
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

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v1, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "EnterprisePrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3ac

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 47
    sget p0, Lcom/android/settings/R$xml;->enterprise_set_default_apps_settings:I

    return p0
.end method
