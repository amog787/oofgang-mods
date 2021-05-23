.class public Lcom/oneplus/server/hypnus/HypnusService;
.super Lcom/android/internal/app/IHypnusService$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/hypnus/HypnusService$zta;
    }
.end annotation


# static fields
.field private static final HYPNUS_LOG_TAG:Ljava/lang/String; = "hypnus"

.field private static final TAG:Ljava/lang/String; = "HypnusService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mHyp:Lcom/oneplus/server/hypnus/Hypnus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/IHypnusService$Stub;-><init>()V

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z

    iput-object p1, p0, Lcom/oneplus/server/hypnus/HypnusService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/server/hypnus/Hypnus;->zta()Lcom/oneplus/server/hypnus/Hypnus;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    new-instance v0, Lcom/oneplus/server/hypnus/HypnusService$zta;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/server/hypnus/HypnusService$zta;-><init>(Lcom/oneplus/server/hypnus/HypnusService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/oneplus/server/hypnus/HypnusService$zta;->zta()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/hypnus/HypnusService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z

    return p0
.end method

.method private checkSystemApp(I)Z
    .locals 11

    const-string v0, "HypnusService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    :try_start_2
    iget-boolean v9, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "Pkgname:"

    if-eqz v9, :cond_0

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-interface {p1, v7, v3, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x81

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is systemapp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catch_0
    move-exception v9

    :try_start_4
    const-string v10, "Could not find package [%s]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has no permission to call hypnus"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No known packages with uid "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackagesForUid failed "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private convertMaps(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HypnusService"

    const-string v2, "convertMaps exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private isGranted()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public broadcast(I)V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "HypnusService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thermal broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->values()[Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "oneplus.intent.action.THERMAL_STATUS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x11000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public hypnusScreenStatus(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    invoke-virtual {p0, p1}, Lcom/oneplus/server/hypnus/Hypnus;->you(I)V

    goto :goto_0

    :cond_1
    const-string p0, "HypnusService"

    const-string p1, "mHyp is not initialized!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public hypnusSetPackage(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/server/hypnus/Hypnus;->sis(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "HypnusService"

    const-string p1, "mHyp is not initialized!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public hypnusSetScene(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/server/hypnus/Hypnus;->tsu(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const-string p0, "HypnusService"

    const-string p1, "mHyp is not initialized!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isHypnusOK()Z
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mHyp:Lcom/oneplus/server/hypnus/Hypnus;

    invoke-virtual {p0}, Lcom/oneplus/server/hypnus/Hypnus;->rtg()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1
    :try_start_1
    const-string p0, "HypnusService"

    const-string v0, "mHyp is not initialized!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public publish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/IHypnusService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "hypnus"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "HypnusService"

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v2, :cond_2

    new-instance v2, Lcom/oneplus/server/hypnus/HypnusService$zta;

    iget-object v4, p0, Lcom/oneplus/server/hypnus/HypnusService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4}, Lcom/oneplus/server/hypnus/HypnusService$zta;-><init>(Lcom/oneplus/server/hypnus/HypnusService;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/oneplus/server/hypnus/HypnusService$zta;->zta()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    :cond_2
    iget-object v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->updateHighTempStatus(ZI)V

    goto :goto_0

    :cond_3
    rsub-int p1, p1, 0x2710

    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->updateHighTempStatus(ZI)V

    goto :goto_0

    :cond_4
    const-string p0, "DisplayManagerInternal is null"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setSilent5G(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/HypnusService;->isGranted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/server/hypnus/HypnusService;->mDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "HypnusService"

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSilent5G: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/oneplus/server/hypnus/HypnusService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/d;->ibl(Landroid/content/Context;)Lcom/android/server/am/d;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/d;->gck(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
