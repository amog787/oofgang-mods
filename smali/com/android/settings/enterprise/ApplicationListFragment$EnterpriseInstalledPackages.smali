.class public Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;
.super Lcom/android/settings/enterprise/ApplicationListFragment;
.source "ApplicationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterpriseInstalledPackages"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/enterprise/ApplicationListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 0

    .line 111
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object p0

    .line 112
    invoke-interface {p0, p2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->listPolicyInstalledApps(Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3aa

    return p0
.end method
