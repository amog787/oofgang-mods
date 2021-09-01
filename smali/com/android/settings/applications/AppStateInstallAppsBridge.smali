.class public Lcom/android/settings/applications/AppStateInstallAppsBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateInstallAppsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final TAG:Ljava/lang/String; = "AppStateInstallAppsBridge"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mIpm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 55
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    const-string p2, "appops"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private getAppOpMode(IILjava/lang/String;)I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 79
    :catch_0
    sget-object p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string p1, "PackageManager dead. Cannot get permission info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isSystemApp(I)Z
    .locals 0

    .line 102
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    .locals 6

    .line 108
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;-><init>()V

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 109
    invoke-direct {p0, v1, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionRequested:Z

    const/16 v1, 0x42

    .line 111
    invoke-direct {p0, v1, p2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    .line 115
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e7

    .line 117
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 116
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 118
    invoke-direct {p0, v1, v2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v3

    .line 120
    iget v4, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    if-eq v4, v3, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 125
    sget-object v3, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAppOpsManager.setMode error 1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_0
    invoke-direct {p0, v1, p2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    goto :goto_1

    .line 132
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v1, v2, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 134
    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppOpsManager.setMode error 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :cond_1
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->isSystemApp(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isSystemApp:Z

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 70
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
