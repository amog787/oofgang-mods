.class public abstract Lcom/oneplus/loading/LoadingHelper;
.super Ljava/lang/Object;
.source "LoadingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mProgreeMinShowTime:J

.field private mProgreeView:Ljava/lang/Object;

.field private mShowProgreeRunnable:Ljava/lang/Runnable;

.field private mShowProgreeTime:J

.field private mWillShowProgreeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    .line 47
    iput-wide v0, p0, Lcom/oneplus/loading/LoadingHelper;->mWillShowProgreeTime:J

    const-wide/16 v0, 0x1f4

    .line 48
    iput-wide v0, p0, Lcom/oneplus/loading/LoadingHelper;->mProgreeMinShowTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/loading/LoadingHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oneplus/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/loading/LoadingHelper;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oneplus/loading/LoadingHelper;->mProgreeView:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/loading/LoadingHelper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oneplus/loading/LoadingHelper;->mProgreeView:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$202(Lcom/oneplus/loading/LoadingHelper;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/oneplus/loading/LoadingHelper;->mShowProgreeTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/oneplus/loading/LoadingHelper;Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oneplus/loading/LoadingHelper;->doFinish(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V

    return-void
.end method

.method private doFinish(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V
    .locals 2

    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/oneplus/loading/LoadingHelper;->mProgreeView:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/oneplus/loading/LoadingHelper;->hideProgree(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    .line 109
    invoke-interface {p1, p0}, Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;->finish(Z)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/oneplus/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/loading/LoadingHelper$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/loading/LoadingHelper$3;-><init>(Lcom/oneplus/loading/LoadingHelper;ZLcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public beginShowProgress()V
    .locals 4

    .line 69
    new-instance v0, Lcom/oneplus/loading/LoadingHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/loading/LoadingHelper$1;-><init>(Lcom/oneplus/loading/LoadingHelper;)V

    iput-object v0, p0, Lcom/oneplus/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    .line 78
    sget-object v1, Lcom/oneplus/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/oneplus/loading/LoadingHelper;->mWillShowProgreeTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finishShowProgress(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/oneplus/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    sget-object v1, Lcom/oneplus/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/oneplus/loading/LoadingHelper;->doFinish(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/loading/LoadingHelper;->mShowProgreeTime:J

    sub-long/2addr v0, v2

    .line 87
    iget-wide v2, p0, Lcom/oneplus/loading/LoadingHelper;->mProgreeMinShowTime:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 89
    sget-object v0, Lcom/oneplus/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/loading/LoadingHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/loading/LoadingHelper$2;-><init>(Lcom/oneplus/loading/LoadingHelper;Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/oneplus/loading/LoadingHelper;->doFinish(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V

    :goto_0
    return-void
.end method

.method protected abstract hideProgree(Ljava/lang/Object;)V
.end method

.method protected abstract showProgree()Ljava/lang/Object;
.end method
