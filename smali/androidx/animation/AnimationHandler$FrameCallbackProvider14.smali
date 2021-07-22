.class Landroidx/animation/AnimationHandler$FrameCallbackProvider14;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameCallbackProvider14"
.end annotation


# instance fields
.field private mFrameDelay:J

.field private mLastFrameTime:J

.field final synthetic this$0:Landroidx/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroidx/animation/AnimationHandler;)V
    .locals 2

    .line 302
    iput-object p1, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->this$0:Landroidx/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 299
    iput-wide v0, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    const-wide/16 v0, 0x10

    .line 300
    iput-wide v0, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->mFrameDelay:J

    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 2

    .line 306
    invoke-static {}, Landroidx/animation/AnimationHandler;->access$000()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 307
    invoke-static {}, Landroidx/animation/AnimationHandler;->access$000()Ljava/lang/ThreadLocal;

    move-result-object p0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 309
    :cond_0
    invoke-static {}, Landroidx/animation/AnimationHandler;->access$000()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public onNewCallbackAdded(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 0

    return-void
.end method

.method public postFrameCallback()V
    .locals 6

    .line 323
    iget-wide v0, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->mFrameDelay:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 325
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 326
    invoke-virtual {p0}, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 315
    iget-object p0, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;->this$0:Landroidx/animation/AnimationHandler;

    invoke-virtual {p0, v0, v1}, Landroidx/animation/AnimationHandler;->onAnimationFrame(J)V

    return-void
.end method
