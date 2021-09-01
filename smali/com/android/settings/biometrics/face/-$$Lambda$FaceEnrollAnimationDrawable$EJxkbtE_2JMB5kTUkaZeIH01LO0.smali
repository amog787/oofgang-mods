.class public final synthetic Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollAnimationDrawable$EJxkbtE_2JMB5kTUkaZeIH01LO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollAnimationDrawable$EJxkbtE_2JMB5kTUkaZeIH01LO0;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    return-void
.end method


# virtual methods
.method public final onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollAnimationDrawable$EJxkbtE_2JMB5kTUkaZeIH01LO0;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->lambda$onBoundsChange$0$FaceEnrollAnimationDrawable(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method
