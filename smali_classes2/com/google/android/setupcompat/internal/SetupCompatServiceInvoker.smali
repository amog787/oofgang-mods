.class public Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
.super Ljava/lang/Object;
.source "SetupCompatServiceInvoker.java"


# static fields
.field private static final MAX_WAIT_TIME_FOR_CONNECTION_MS:J

.field private static instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final loggingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final setupCompatExecutor:Ljava/util/concurrent/ExecutorService;

.field private final waitTimeInMillisForServiceConnection:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->MAX_WAIT_TIME_FOR_CONNECTION_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    .line 96
    sget-object p1, Lcom/google/android/setupcompat/internal/ExecutorProvider;->setupCompatServiceInvoker:Lcom/google/android/setupcompat/internal/ExecutorProvider;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/ExecutorProvider;->get()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 97
    sget-object p1, Lcom/google/android/setupcompat/internal/ExecutorProvider;->setupCompatExecutor:Lcom/google/android/setupcompat/internal/ExecutorProvider;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/ExecutorProvider;->get()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->setupCompatExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    sget-wide v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->MAX_WAIT_TIME_FOR_CONNECTION_MS:J

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
    .locals 2

    const-class v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 112
    :cond_0
    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private invokeBindBack(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "SucServiceInvoker"

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    invoke-static {v1, v2, v3, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->get(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0, p1, p2}, Lcom/google/android/setupcompat/ISetupCompatService;->validateActivity(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "BindBack failed since service reference is null. Are the permissions valid?"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "Exception occurred while %s trying bind back to SetupWizard."

    .line 89
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private invokeLogMetric(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "SucServiceInvoker"

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-static {v1, v2, v3, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->get(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p0, p1, p2, v1}, Lcom/google/android/setupcompat/ISetupCompatService;->logMetric(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "logMetric failed since service reference is null. Are the permissions valid?"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, "Exception occurred while trying to log metric = [%s]"

    .line 72
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$bindBack$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->invokeBindBack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$logMetricEvent$0(ILandroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->invokeLogMetric(ILandroid/os/Bundle;)V

    return-void
.end method

.method static setInstanceForTesting(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;)V
    .locals 0

    .line 117
    sput-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    return-void
.end method


# virtual methods
.method public bindBack(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->setupCompatExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Screen %s bind back fail."

    .line 56
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SucServiceInvoker"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$bindBack$1$SetupCompatServiceInvoker(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->lambda$bindBack$1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$logMetricEvent$0$SetupCompatServiceInvoker(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->lambda$logMetricEvent$0(ILandroid/os/Bundle;)V

    return-void
.end method

.method public logMetricEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Metric of type %d dropped since queue is full."

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SucServiceInvoker"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
