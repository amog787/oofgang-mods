.class public final synthetic Lcom/android/settings/gestures/-$$Lambda$BackGestureIndicatorDrawable$Uerbvrd7VOnuAeux9yurAc9gnIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/-$$Lambda$BackGestureIndicatorDrawable$Uerbvrd7VOnuAeux9yurAc9gnIo;->f$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    return-void
.end method


# virtual methods
.method public final onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/gestures/-$$Lambda$BackGestureIndicatorDrawable$Uerbvrd7VOnuAeux9yurAc9gnIo;->f$0:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->lambda$new$0$BackGestureIndicatorDrawable(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method
