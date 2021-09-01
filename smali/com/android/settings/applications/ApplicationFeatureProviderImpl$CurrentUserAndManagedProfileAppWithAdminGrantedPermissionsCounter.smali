.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;
.super Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 0

    .line 232
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    .line 233
    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;->onNumberOfAppsResult(I)V

    return-void
.end method
