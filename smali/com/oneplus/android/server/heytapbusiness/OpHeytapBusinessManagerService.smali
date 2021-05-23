.class public Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;


# static fields
.field private static final bio:I = 0x18

.field private static final cno:Z

.field private static final igw:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final kth:Ljava/lang/String; = "OpHeytapBusiness"

.field private static final wtn:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rtg:Ljava/lang/String;

.field private sis:Landroid/os/Handler;

.field private ssp:Landroid/os/IBinder;

.field private tsu:I

.field private you:Landroid/os/HandlerThread;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->cno:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "global"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "china"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "india"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "europe"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "northamerica"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "tmo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-string v2, "spint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "verizon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const-string v2, "att"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->tsu:I

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->rtg:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;-><init>(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->ssp:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta:Landroid/content/Context;

    return-void
.end method

.method private rtg()V
    .locals 4

    const-string v0, "OpHeytapBusiness"

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->tsu()Lcom/oneplus/os/IParamService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x18

    invoke-interface {v1, v2}, Lcom/oneplus/os/IParamService;->getParamIntSYNC(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->tsu:I

    sget-object v2, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->wtn:Landroid/util/SparseArray;

    const-string v3, "NULL"

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->rtg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom flag value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->tsu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->rtg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting build flag value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->rtg:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic ssp()V
    .locals 1

    iget v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->tsu:I

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->rtg:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->sis(ILjava/lang/String;)Lcom/oneplus/android/server/heytapbusiness/sis;

    return-void
.end method

.method private tsu()Lcom/oneplus/os/IParamService;
    .locals 3

    const-string p0, "OpHeytapBusiness"

    :try_start_0
    const-string v0, "ParamService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/oneplus/os/IParamService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IParamService;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting param service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->tsu:I

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bio()V
    .locals 0

    return-void
.end method

.method public synthetic cno()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->ssp()V

    return-void
.end method

.method public kth()V
    .locals 4

    const-string v0, "OpHeytapBusiness"

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->rtg()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HeytapBusiness"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->you:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->you:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->sis:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/android/server/heytapbusiness/zta;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/heytapbusiness/zta;-><init>(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->cno:Z

    if-eqz v1, :cond_0

    const-string v1, "Start heytap business service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "heytapbusiness"

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->ssp:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Failed to start heytap business service!"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->igw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public runShareBusiness(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->bio()Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->gck(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->igw(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public shouldRunLoginBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->wtn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRunShareBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->bio()Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->dma(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRunWeChatPayBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->wtn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
