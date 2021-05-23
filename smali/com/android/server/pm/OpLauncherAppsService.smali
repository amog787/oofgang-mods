.class public Lcom/android/server/pm/OpLauncherAppsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/pm/IOpLauncherAppsService;


# static fields
.field private static final REMOVE_PARALLEL_USER:I = 0x1

.field private static final SHOW_TIP:I = 0x2


# instance fields
.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/OpLauncherAppsService$zta;

    invoke-direct {v1, p0}, Lcom/android/server/pm/OpLauncherAppsService$zta;-><init>(Lcom/android/server/pm/OpLauncherAppsService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/pm/OpLauncherAppsService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/OpLauncherAppsService;IIIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/OpLauncherAppsService;->showDialog(IIIILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/OpLauncherAppsService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/pm/OpLauncherAppsService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/OpLauncherAppsService;->mProfiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/pm/OpLauncherAppsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/OpLauncherAppsService;->resetParallelAppSettings()V

    return-void
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/OpLauncherAppsService;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/OpLauncherAppsService;->mProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private resetParallelAppSettings()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x3ed

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/OpLauncherAppsService;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v6

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private showDialog(IIIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/android/server/pm/OpLauncherAppsService$you;

    invoke-direct {p3, p0}, Lcom/android/server/pm/OpLauncherAppsService$you;-><init>(Lcom/android/server/pm/OpLauncherAppsService;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance p2, Lcom/android/server/pm/OpLauncherAppsService$sis;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/OpLauncherAppsService$sis;-><init>(Lcom/android/server/pm/OpLauncherAppsService;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkParallelUserstate(Landroid/os/UserHandle;Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput-object p2, p0, Lcom/android/server/pm/OpLauncherAppsService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/pm/OpLauncherAppsService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method
