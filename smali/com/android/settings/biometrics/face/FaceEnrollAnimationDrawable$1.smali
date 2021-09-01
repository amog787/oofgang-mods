.class Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;
.super Ljava/lang/Object;
.source "FaceEnrollAnimationDrawable.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/ParticleCollection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrolled()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)Landroid/animation/TimeAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 59
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/biometrics/face/ParticleCollection$Listener;->onEnrolled()V

    :cond_0
    return-void
.end method
