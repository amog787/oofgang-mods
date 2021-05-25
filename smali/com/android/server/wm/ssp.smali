.class public final synthetic Lcom/android/server/wm/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic zta:Lcom/android/server/wm/gwm$zta;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/gwm$zta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ssp;->zta:Lcom/android/server/wm/gwm$zta;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ssp;->zta:Lcom/android/server/wm/gwm$zta;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/gwm$zta;->rtg(Lcom/android/server/wm/gwm$zta;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
