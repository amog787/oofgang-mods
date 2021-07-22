.class public Lcom/google/android/material/indicator/animation/type/WormAnimation;
.super Lcom/google/android/material/indicator/animation/type/BaseAnimation;
.source "WormAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/indicator/animation/type/BaseAnimation<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field private coordinateEnd:I

.field private coordinateStart:I

.field private isRightSide:Z

.field private radius:I

.field private rectLeftEdge:I

.field private rectRightEdge:I

.field private value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/material/indicator/animation/type/BaseAnimation;-><init>(Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V

    .line 30
    new-instance p1, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    invoke-direct {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/indicator/animation/type/WormAnimation;Lcom/google/android/material/indicator/animation/data/WormAnimationValue;Landroid/animation/ValueAnimator;ZZI)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->onAnimateUpdated(Lcom/google/android/material/indicator/animation/data/WormAnimationValue;Landroid/animation/ValueAnimator;ZZI)V

    return-void
.end method

.method private createRectValues(Z)Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;
    .locals 3

    if-eqz p1, :cond_0

    .line 215
    iget p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateStart:I

    iget v0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->radius:I

    add-int v1, p1, v0

    .line 216
    iget p0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateEnd:I

    add-int v2, p0, v0

    sub-int/2addr p1, v0

    sub-int/2addr p0, v0

    goto :goto_0

    .line 222
    :cond_0
    iget p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateStart:I

    iget v0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->radius:I

    sub-int v1, p1, v0

    .line 223
    iget p0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateEnd:I

    sub-int v2, p0, v0

    add-int/2addr p1, v0

    add-int/2addr p0, v0

    .line 229
    :goto_0
    new-instance v0, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;-><init>(IIII)V

    return-object v0
.end method

.method private createWormAnimator(IIZLcom/google/android/material/indicator/animation/data/WormAnimationValue;ZI)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 110
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 111
    sget-object p2, Landroidx/animation/AnimatorUtils;->op_control_interpolator_fast_out_slow_in_auxiliary:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p5, :cond_0

    const-wide/16 v0, 0xe1

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7d

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    :goto_0
    new-instance p2, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/indicator/animation/type/WormAnimation$1;-><init>(Lcom/google/android/material/indicator/animation/type/WormAnimation;Lcom/google/android/material/indicator/animation/data/WormAnimationValue;ZZI)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private hasChanges(IIIZ)Z
    .locals 2

    .line 187
    iget v0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateStart:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 191
    :cond_0
    iget p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateEnd:I

    if-eq p1, p2, :cond_1

    return v1

    .line 195
    :cond_1
    iget p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->radius:I

    if-eq p1, p3, :cond_2

    return v1

    .line 199
    :cond_2
    iget-boolean p0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->isRightSide:Z

    if-eq p0, p4, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private onAnimateUpdated(Lcom/google/android/material/indicator/animation/data/WormAnimationValue;Landroid/animation/ValueAnimator;ZZI)V
    .locals 5

    .line 128
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    .line 130
    iget-boolean v1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->isRightSide:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_5

    if-nez p3, :cond_4

    if-nez p4, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    goto/16 :goto_1

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->radius:I

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0xa

    if-le p3, p4, :cond_3

    cmpg-float p3, p2, v4

    if-gez p3, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    .line 138
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    goto/16 :goto_1

    :cond_1
    cmpg-float p3, p2, v3

    if-gez p3, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    .line 141
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    goto/16 :goto_1

    :cond_2
    cmpg-float p2, p2, v2

    if-gtz p2, :cond_c

    .line 143
    invoke-virtual {p1, p5}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    .line 144
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    goto/16 :goto_1

    .line 147
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    goto :goto_1

    :cond_5
    if-nez p3, :cond_b

    if-nez p4, :cond_6

    .line 157
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    .line 159
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->radius:I

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0xa

    if-le p3, p4, :cond_9

    cmpg-float p3, p2, v4

    if-gez p3, :cond_7

    .line 161
    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    .line 162
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    :cond_7
    cmpg-float p3, p2, v3

    if-gez p3, :cond_8

    .line 164
    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    goto :goto_0

    :cond_8
    cmpg-float p2, p2, v2

    if-gtz p2, :cond_a

    .line 167
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    .line 168
    invoke-virtual {p1, p5}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    goto :goto_0

    .line 171
    :cond_9
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    .line 174
    :cond_a
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    goto :goto_1

    .line 176
    :cond_b
    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    .line 180
    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->listener:Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;

    if-eqz p0, :cond_d

    .line 181
    invoke-interface {p0, p1}, Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/google/android/material/indicator/animation/data/Value;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimator()Landroid/animation/Animator;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 1

    .line 36
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public duration(J)Lcom/google/android/material/indicator/animation/type/WormAnimation;
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->duration(J)Lcom/google/android/material/indicator/animation/type/BaseAnimation;

    return-object p0
.end method

.method public bridge synthetic progress(F)Lcom/google/android/material/indicator/animation/type/BaseAnimation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->progress(F)Lcom/google/android/material/indicator/animation/type/WormAnimation;

    return-object p0
.end method

.method public progress(F)Lcom/google/android/material/indicator/animation/type/WormAnimation;
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-object p0

    .line 87
    :cond_0
    iget-wide v1, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animationDuration:J

    long-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    .line 88
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 89
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v1

    .line 97
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public with(IIIZ)Lcom/google/android/material/indicator/animation/type/WormAnimation;
    .locals 8

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->hasChanges(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->createAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    .line 52
    iput p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateStart:I

    .line 53
    iput p2, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->coordinateEnd:I

    .line 55
    iput p3, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->radius:I

    .line 56
    iput-boolean p4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->isRightSide:Z

    sub-int p2, p1, p3

    .line 58
    iput p2, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->rectLeftEdge:I

    add-int/2addr p1, p3

    .line 59
    iput p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->rectRightEdge:I

    .line 61
    iget-object p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    invoke-virtual {p1, p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectStart(I)V

    .line 62
    iget-object p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    iget p2, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->rectRightEdge:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->setRectEnd(I)V

    .line 64
    invoke-direct {p0, p4}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->createRectValues(Z)Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;

    move-result-object p1

    .line 65
    iget p2, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->fromX:I

    iget p4, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->toX:I

    sub-int/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p3, p3, 0xa

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-le p2, p3, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, v0

    .line 70
    :goto_0
    iget v2, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->fromX:I

    iget v3, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->toX:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    iget v7, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->reverseToX:I

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->createWormAnimator(IIZLcom/google/android/material/indicator/animation/data/WormAnimationValue;ZI)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 71
    iget v2, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->reverseFromX:I

    iget v7, p1, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->reverseToX:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation;->value:Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    move v3, v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->createWormAnimator(IIZLcom/google/android/material/indicator/animation/data/WormAnimationValue;ZI)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p2, :cond_1

    .line 73
    iget-object p2, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    check-cast p2, Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p3, v1, v0

    aput-object p1, v1, p4

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    :goto_1
    return-object p0
.end method
