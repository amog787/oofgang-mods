.class public Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;
.super Lcom/oneplus/permissioncontrol/IOPPermissionControl$Stub;
.source ""


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "OPPermissionControlService"

.field private static mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

.field private static mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

.field private static final sCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/permissioncontrol/IOPPermissionControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->DEBUG:Z

    new-instance v0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService$zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService$zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->sCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/permissioncontrol/IOPPermissionControl$Stub;-><init>()V

    sget-boolean p0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OPPermissionControlService"

    const-string v0, "construct called"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getDefault()Lcom/oneplus/permissioncontrol/IOPPermissionControl;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->sCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/permissioncontrol/IOPPermissionControl;

    return-object v0
.end method


# virtual methods
.method public getPermissionService(I)Landroid/os/IBinder;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    return-object v1

    :cond_1
    sget-object p0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

    return-object p0

    :cond_2
    sget-object p0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

    return-object p0
.end method

.method public isRequestPermission(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/PermissionAmInjector;->isRequestPermission(Z)V

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPPermissionControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/permissioncontrol/IOPPermissionControl$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_permission_control_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public resetApplicationPermissions()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PermissionPmInjector;->resetApplicationPermissions(I)V

    return-void
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "setPermissionServiceBinderProxy called from non-system process"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string v0, "OPPermissionControlService"

    if-eqz p2, :cond_4

    if-eq p2, p0, :cond_3

    goto :goto_2

    :cond_3
    sput-object p1, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

    const-string p0, "set control service proxy done"

    goto :goto_1

    :cond_4
    sput-object p1, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

    const-string p0, "set request service proxy done"

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
