.class public abstract Lcom/android/settings/enterprise/ApplicationListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ApplicationListFragment.java"

# interfaces
.implements Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionMicrophone;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionLocation;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionCamera;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "EnterprisePrivacySettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 48
    sget p0, Lcom/android/settings/R$xml;->app_list_disclosure_settings:I

    return p0
.end method
