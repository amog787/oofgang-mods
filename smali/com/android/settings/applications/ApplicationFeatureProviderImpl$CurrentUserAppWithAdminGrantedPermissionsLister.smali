.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAppWithAdminGrantedPermissionsLister"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 0

    .line 265
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V

    .line 267
    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    return-void
.end method


# virtual methods
.method protected onAppListBuilt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;->onListOfAppsResult(Ljava/util/List;)V

    return-void
.end method
