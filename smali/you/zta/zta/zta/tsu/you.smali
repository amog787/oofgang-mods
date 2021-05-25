.class public Lyou/zta/zta/zta/tsu/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/carrier/IOpCarrierManager;


# static fields
.field private static final bio:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper; = null

.field private static final dma:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final gck:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final igw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final kth:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final qbh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final rtg:Ljava/lang/String; = "/product/media/shutdownanimation_flag_blank.zip"

.field public static final sis:Ljava/lang/String; = "carrier_pre_load"

.field private static ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy; = null

.field public static final tsu:Ljava/lang/String; = "carrier_sprint_first_boot"

.field private static final wtn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final you:Ljava/lang/String; = "OpCarrierManager"

.field private static final ywr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lyou/zta/zta/zta/tsu/you;->zta:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->kth:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->kth:Ljava/util/Set;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->kth:Ljava/util/Set;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v5, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v6, "android.permission.USE_SIP"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v6, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    const-string v8, "android.permission.READ_SMS"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->igw:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->wtn:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->gck:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->gck:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->dma:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->dma:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->dma:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->dma:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    const-string v4, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    const-string v4, "android.permission.SEND_SMS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    const-string v5, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    const-string v5, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/you;->qbh:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->qbh:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->qbh:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->qbh:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->qbh:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private you()V
    .locals 1

    const-string p0, "service.bootanim.exit"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sys.shutingdown"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ctl.start"

    const-string v0, "bootanim"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    move/from16 v0, p7

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-enter p4

    move-object v9, p2

    :try_start_0
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_2

    monitor-exit p4

    goto :goto_0

    :cond_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v4

    :goto_1
    move-object v10, v3

    array-length v11, v10

    move v12, v4

    :goto_2
    if-ge v12, v11, :cond_1

    aget v7, v10, v12

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v2

    move/from16 v5, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public grantCarrierPackageDefPermissions(I)V
    .locals 6

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->kth:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->bio:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->igw:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->igw:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->wtn:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->dma:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lyou/zta/zta/zta/tsu/you;->gck:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10401e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/util/Set;

    sget-object v3, Lyou/zta/zta/zta/tsu/you;->ywr:Ljava/util/Set;

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xb7

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_pre_load"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ro.boot.opcarrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "tmo"

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v0, v2

    invoke-virtual {p0, v5}, Lyou/zta/zta/zta/tsu/you;->grantCarrierPackageDefPermissions(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V
    .locals 8

    const-string p0, "OpCarrierManager"

    const-string v2, "com.sprint.vvm"

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v4, 0x40

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v5, v1

    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_1

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v3, :cond_0

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grantDefaultPermissionsToUssVVM, not found package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "grantDefaultPermissionsToUssVVM, realVVMSHA1 = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "F8:60:14:53:9F:48:97:A8:1F:26:4F:41:1C:EA:45:EE:ED:D9:85:94"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v0, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sget-object p0, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v6, v3, [Ljava/util/Set;

    sget-object p1, Lyou/zta/zta/zta/tsu/you;->qbh:Ljava/util/Set;

    aput-object p1, v6, v1

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method public initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V
    .locals 0

    sput-object p1, Lyou/zta/zta/zta/tsu/you;->ssp:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    sput-object p2, Lyou/zta/zta/zta/tsu/you;->cno:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    return-void
.end method

.method public sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyou/zta/zta/zta/tsu/you$zta;

    invoke-direct {v0, p0, p2, p3}, Lyou/zta/zta/zta/tsu/you$zta;-><init>(Lyou/zta/zta/zta/tsu/you;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyou/zta/zta/zta/tsu/you$you;

    invoke-direct {v0, p0, p2, p3}, Lyou/zta/zta/zta/tsu/you$you;-><init>(Lyou/zta/zta/zta/tsu/you;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lyou/zta/zta/zta/tsu/you$sis;

    invoke-direct {v0, p0, p2, p3, p4}, Lyou/zta/zta/zta/tsu/you$sis;-><init>(Lyou/zta/zta/zta/tsu/you;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendApplicationStopByForceStop(Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyou/zta/zta/zta/tsu/you$tsu;

    invoke-direct {v0, p0, p2, p3, p4}, Lyou/zta/zta/zta/tsu/you$tsu;-><init>(Lyou/zta/zta/zta/tsu/you;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v11, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "carrier_sprint_first_boot"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    const-string v1, "ro.boot.opcarrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sprint"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/4 v12, 0x2

    :goto_0
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tmo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    const/16 v18, 0x2

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v17, v0

    move/from16 v19, p6

    invoke-direct/range {v12 .. v19}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_2
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;Z)V"
        }
    .end annotation

    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v11, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string v1, "ro.boot.opcarrier"

    const-string v2, "tmo"

    if-eqz p6, :cond_0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v18, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v19}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "carrier_sprint_first_boot"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "carrier_pre_load"

    invoke-static {v3, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sprint"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v6, :cond_2

    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v19}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/4 v12, 0x2

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/4 v12, 0x1

    :goto_0
    const/4 v13, -0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v13}, Lyou/zta/zta/zta/tsu/you;->zta(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_4
    return-void
.end method

.method public setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string p0, "ro.boot.opcarrier"

    const-string v0, "none"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sprint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "tmo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070083

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "IllegalArgumentException, Unknown package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpCarrierManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public showCarrierShutdownAnimation()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x80

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/16 v2, 0x3e

    if-eqz v1, :cond_1

    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "/product/media/shutdownanimation_flag_blank.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "OpCarrierManager"

    if-nez v1, :cond_0

    const-string v1, "blank not exists"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "blank exists"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-direct {p0}, Lyou/zta/zta/zta/tsu/you;->you()V

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    return v0
.end method

.method public sis(Landroid/content/Context;)V
    .locals 1

    const-string p0, "ro.boot.opcarrier"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "carrier_pre_load"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
