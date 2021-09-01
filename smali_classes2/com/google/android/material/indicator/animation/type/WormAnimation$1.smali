.class Lcom/google/android/material/indicator/animation/type/WormAnimation$1;
.super Ljava/lang/Object;
.source "WormAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/indicator/animation/type/WormAnimation;->createWormAnimator(IIZLcom/google/android/material/indicator/animation/data/WormAnimationValue;ZI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/indicator/animation/type/WormAnimation;

.field final synthetic val$isLongSlip:Z

.field final synthetic val$isReverse:Z

.field final synthetic val$reverseToX:I

.field final synthetic val$value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;


# direct methods
.method constructor <init>(Lcom/google/android/material/indicator/animation/type/WormAnimation;Lcom/google/android/material/indicator/animation/data/WormAnimationValue;ZZI)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->this$0:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    iput-object p2, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    iput-boolean p3, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$isReverse:Z

    iput-boolean p4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$isLongSlip:Z

    iput p5, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$reverseToX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->this$0:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    iget-object v1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    iget-boolean v3, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$isReverse:Z

    iget-boolean v4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$isLongSlip:Z

    iget v5, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;->val$reverseToX:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->access$000(Lcom/google/android/material/indicator/animation/type/WormAnimation;Lcom/google/android/material/indicator/animation/data/WormAnimationValue;Landroid/animation/ValueAnimator;ZZI)V

    return-void
.end method
