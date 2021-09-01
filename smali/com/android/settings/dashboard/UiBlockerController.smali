.class public Lcom/android/settings/dashboard/UiBlockerController;
.super Ljava/lang/Object;
.source "UiBlockerController.java"


# instance fields
.field private mBlockerFinished:Z

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x1f4

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/dashboard/UiBlockerController;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mKeys:Ljava/util/Set;

    .line 55
    iput-wide p2, p0, Lcom/android/settings/dashboard/UiBlockerController;->mTimeoutMillis:J

    return-void
.end method

.method private synthetic lambda$start$0(Ljava/lang/Runnable;)V
    .locals 4

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/settings/dashboard/UiBlockerController;->mTimeoutMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UiBlockerController"

    const-string v1, "interrupted"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    .line 76
    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public countDown(Ljava/lang/String;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBlockerFinished()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    return p0
.end method

.method public synthetic lambda$start$0$UiBlockerController(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/UiBlockerController;->lambda$start$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/Runnable;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;-><init>(Lcom/android/settings/dashboard/UiBlockerController;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0
.end method
