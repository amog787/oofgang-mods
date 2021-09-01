.class public abstract Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "AppWithAdminGrantedPermissionsCounter.java"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManagerService:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    .line 42
    iput-object p5, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    .line 54
    iget v0, p4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 57
    array-length p2, p0

    move p3, v1

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v0, p0, p3

    const/4 v3, 0x0

    .line 58
    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 68
    :cond_2
    iget-object p1, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/os/UserHandle;

    iget v3, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 69
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 68
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    if-eq p1, v2, :cond_3

    return v1

    .line 74
    :cond_3
    :try_start_0
    array-length p1, p0

    move p2, v1

    :goto_1
    if-ge p2, p1, :cond_5

    aget-object v0, p0, p2

    .line 75
    iget v3, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p3, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    return v2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    :cond_5
    return v1
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppCounter;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method
