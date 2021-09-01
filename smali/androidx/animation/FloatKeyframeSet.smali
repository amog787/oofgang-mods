.class Landroidx/animation/FloatKeyframeSet;
.super Landroidx/animation/KeyframeSet;
.source "FloatKeyframeSet.java"

# interfaces
.implements Landroidx/animation/Keyframes$FloatKeyframes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/animation/KeyframeSet<",
        "Ljava/lang/Float;",
        ">;",
        "Landroidx/animation/Keyframes$FloatKeyframes;"
    }
.end annotation


# direct methods
.method varargs constructor <init>([Landroidx/animation/Keyframe$FloatKeyframe;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/animation/KeyframeSet;-><init>([Landroidx/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public clone()Landroidx/animation/FloatKeyframeSet;
    .locals 4

    .line 45
    iget-object p0, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    new-array v1, v0, [Landroidx/animation/Keyframe$FloatKeyframe;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 49
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/animation/Keyframe;

    invoke-virtual {v3}, Landroidx/animation/Keyframe;->clone()Landroidx/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroidx/animation/Keyframe$FloatKeyframe;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Landroidx/animation/FloatKeyframeSet;

    invoke-direct {p0, v1}, Landroidx/animation/FloatKeyframeSet;-><init>([Landroidx/animation/Keyframe$FloatKeyframe;)V

    return-object p0
.end method

.method public bridge synthetic clone()Landroidx/animation/Keyframes;
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroidx/animation/FloatKeyframeSet;->clone()Landroidx/animation/FloatKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroidx/animation/FloatKeyframeSet;->clone()Landroidx/animation/FloatKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public getFloatValue(F)F
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    .line 58
    iget-object v0, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/Keyframe$FloatKeyframe;

    .line 59
    iget-object v1, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/animation/Keyframe$FloatKeyframe;

    .line 60
    invoke-virtual {v0}, Landroidx/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 61
    invoke-virtual {v1}, Landroidx/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 62
    invoke-virtual {v0}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v0

    .line 63
    invoke-virtual {v1}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v4

    .line 64
    invoke-virtual {v1}, Landroidx/animation/Keyframe;->getInterpolator()Landroidx/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p1}, Landroidx/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 69
    iget-object p0, p0, Landroidx/animation/KeyframeSet;->mEvaluator:Landroidx/animation/TypeEvaluator;

    if-nez p0, :cond_1

    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 72
    iget-object v0, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v1, p0, Landroidx/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/Keyframe$FloatKeyframe;

    .line 73
    iget-object v1, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroidx/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/animation/Keyframe$FloatKeyframe;

    .line 74
    invoke-virtual {v0}, Landroidx/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 75
    invoke-virtual {v1}, Landroidx/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 76
    invoke-virtual {v0}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v0

    .line 77
    invoke-virtual {v1}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v4

    .line 78
    invoke-virtual {v1}, Landroidx/animation/Keyframe;->getInterpolator()Landroidx/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 80
    invoke-interface {v1, p1}, Landroidx/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_3
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 83
    iget-object p0, p0, Landroidx/animation/KeyframeSet;->mEvaluator:Landroidx/animation/TypeEvaluator;

    if-nez p0, :cond_4

    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    goto :goto_1

    .line 84
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    return v2

    .line 86
    :cond_5
    iget-object v0, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/Keyframe$FloatKeyframe;

    move v1, v2

    .line 87
    :goto_2
    iget v3, p0, Landroidx/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v3, :cond_9

    .line 88
    iget-object v3, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/animation/Keyframe$FloatKeyframe;

    .line 89
    invoke-virtual {v3}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_8

    .line 90
    invoke-virtual {v3}, Landroidx/animation/Keyframe;->getInterpolator()Landroidx/animation/Interpolator;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float/2addr p1, v2

    .line 92
    invoke-virtual {v3}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v2

    invoke-virtual {v0}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    .line 93
    invoke-virtual {v0}, Landroidx/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    .line 94
    invoke-virtual {v3}, Landroidx/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    if-eqz v1, :cond_6

    .line 97
    invoke-interface {v1, p1}, Landroidx/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 99
    :cond_6
    iget-object p0, p0, Landroidx/animation/KeyframeSet;->mEvaluator:Landroidx/animation/TypeEvaluator;

    if-nez p0, :cond_7

    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    goto :goto_3

    .line 100
    :cond_7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_3
    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_2

    .line 105
    :cond_9
    iget-object p0, p0, Landroidx/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    sub-int/2addr v3, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/animation/Keyframe;

    invoke-virtual {p0}, Landroidx/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getValue(F)Ljava/lang/Float;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroidx/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(F)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/animation/FloatKeyframeSet;->getValue(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
