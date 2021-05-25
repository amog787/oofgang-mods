.class public final Lcom/oneplus/android/server/iris/sis;
.super Lcom/android/server/ServiceThread;
.source ""


# static fields
.field private static sis:Landroid/os/Handler;

.field private static you:Lcom/oneplus/android/server/iris/sis;


# instance fields
.field private zta:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "oneplus.iriscommand"

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput v2, p0, Lcom/oneplus/android/server/iris/sis;->zta:I

    return-void
.end method

.method public static sis()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/oneplus/android/server/iris/sis;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/iris/sis;->zta()V

    sget-object v1, Lcom/oneplus/android/server/iris/sis;->sis:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static you()Lcom/oneplus/android/server/iris/sis;
    .locals 2

    const-class v0, Lcom/oneplus/android/server/iris/sis;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/iris/sis;->zta()V

    sget-object v1, Lcom/oneplus/android/server/iris/sis;->you:Lcom/oneplus/android/server/iris/sis;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static zta()V
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/iris/sis;->you:Lcom/oneplus/android/server/iris/sis;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/iris/sis;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/sis;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/iris/sis;->you:Lcom/oneplus/android/server/iris/sis;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    sget-object v0, Lcom/oneplus/android/server/iris/sis;->you:Lcom/oneplus/android/server/iris/sis;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/android/server/iris/sis;->you:Lcom/oneplus/android/server/iris/sis;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/android/server/iris/sis;->sis:Landroid/os/Handler;

    :cond_0
    return-void
.end method
