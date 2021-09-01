.class public abstract Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppLister;
.source "AppWithAdminGrantedPermissionsLister.java"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManagerService:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2, p5}, Lcom/android/settings/applications/AppLister;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    .line 40
    iput-object p4, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLister;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method
