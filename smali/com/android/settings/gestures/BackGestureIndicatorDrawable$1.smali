.class Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;
.super Landroid/os/Handler;
.source "BackGestureIndicatorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/BackGestureIndicatorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;Landroid/os/Looper;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-static {p1}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$100(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$302(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;F)F

    .line 73
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, v1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2bc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-static {v0}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$000(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$102(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;F)F

    .line 67
    iget-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-static {p1}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$300(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-static {v1}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$100(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$202(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;F)F

    .line 69
    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;->this$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-static {p0}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->access$000(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)Landroid/animation/TimeAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :goto_0
    return-void
.end method
