.class public final synthetic Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;->f$0:Lcom/android/settings/DisplaySettings;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;->f$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->lambda$updateSlider$0$DisplaySettings(Landroid/animation/ValueAnimator;)V

    return-void
.end method
