.class Landroidx/animation/AnimationHandler$FrameCallbackProvider16;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroidx/animation/AnimationHandler;)V
    .locals 0

    .line 265
    iput-object p1, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider16;->this$0:Landroidx/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 270
    iget-object p0, p0, Landroidx/animation/AnimationHandler$FrameCallbackProvider16;->this$0:Landroidx/animation/AnimationHandler;

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/animation/AnimationHandler;->onAnimationFrame(J)V

    return-void
.end method

.method public onNewCallbackAdded(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 0

    return-void
.end method

.method public postFrameCallback()V
    .locals 1

    .line 278
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
