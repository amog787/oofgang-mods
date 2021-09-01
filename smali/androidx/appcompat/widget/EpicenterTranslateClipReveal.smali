.class public Landroidx/appcompat/widget/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateProperty;,
        Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;,
        Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;
    }
.end annotation


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 47
    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 48
    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Landroidx/appcompat/R$styleable;->EpicenterTranslateClipReveal:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    sget v0, Landroidx/appcompat/R$styleable;->EpicenterTranslateClipReveal_interpolatorX:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Landroidx/animation/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 65
    :goto_0
    sget v0, Landroidx/appcompat/R$styleable;->EpicenterTranslateClipReveal_interpolatorY:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 70
    :cond_1
    sget-object v0, Landroidx/animation/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 73
    :goto_1
    sget v0, Landroidx/appcompat/R$styleable;->EpicenterTranslateClipReveal_interpolatorZ:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_2

    .line 78
    :cond_2
    sget-object p1, Landroidx/animation/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 81
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    .line 97
    iget-object p0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "android:epicenterReveal:translateX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "android:epicenterReveal:translateY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "android:epicenterReveal:translateZ"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "android:epicenterReveal:z"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 110
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:epicenterReveal:clip"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createRectAnimator(Landroid/view/View;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 5

    .line 205
    new-instance v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Landroidx/appcompat/widget/EpicenterTranslateClipReveal$1;)V

    .line 207
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    aput p6, v3, p3

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    if-eqz p10, :cond_0

    .line 209
    invoke-virtual {p6, p10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    :cond_0
    new-instance p10, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateProperty;

    const/16 v1, 0x78

    invoke-direct {p10, v1}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    new-array v1, v2, [Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    aput-object p1, v1, v4

    aput-object p4, v1, p3

    .line 213
    invoke-static {p0, p10, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p8, :cond_1

    .line 215
    invoke-virtual {p1, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    :cond_1
    new-instance p4, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateProperty;

    const/16 p8, 0x79

    invoke-direct {p4, p8}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    new-array p8, v2, [Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    aput-object p2, p8, v4

    aput-object p5, p8, p3

    .line 219
    invoke-static {p0, p4, v0, p8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p9, :cond_2

    .line 221
    invoke-virtual {p2, p9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    :cond_2
    iget-object p4, p7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p5, "android:epicenterReveal:clip"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 225
    new-instance p5, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$1;

    invoke-direct {p5, p0, p4}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 232
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p1, p4, v4

    aput-object p2, p4, p3

    aput-object p6, p4, v2

    .line 233
    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 234
    invoke-virtual {p0, p5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 1

    .line 194
    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:epicenterReveal:clip"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-nez p0, :cond_0

    .line 196
    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p1, "android:epicenterReveal:bounds"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    :cond_0
    return-object p0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroid/transition/Visibility;->getEpicenter()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 93
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 87
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    if-nez v7, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    iget-object v2, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 121
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 123
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x0

    .line 124
    iget-object v5, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:epicenterReveal:z"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v3, v5

    .line 127
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 131
    iget-object v5, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:epicenterReveal:translateX"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 132
    iget-object v6, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateY"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 133
    iget-object v8, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateZ"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 135
    invoke-direct {p0, v7}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v9

    .line 136
    invoke-direct {p0, v9}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 139
    invoke-virtual {v1, v10}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 141
    new-instance v11, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    iget v13, v10, Landroid/graphics/Rect;->right:I

    invoke-direct {v11, v12, v13, v4}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 142
    new-instance v4, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->right:I

    invoke-direct {v4, v12, v13, v5}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 143
    new-instance v5, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v12, v10, Landroid/graphics/Rect;->top:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v12, v10, v2}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 144
    new-instance v10, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v10, v2, v9, v6}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 146
    iget-object v9, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v12, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v13, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v5

    move-object v5, v10

    move v6, v8

    move-object/from16 v7, p4

    move-object v8, v9

    move-object v9, v12

    move-object v10, v13

    invoke-static/range {v0 .. v10}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    iget-object v2, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 158
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 160
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x0

    .line 161
    iget-object v5, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:epicenterReveal:z"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v6, v3, v5

    .line 163
    iget-object v3, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:epicenterReveal:translateX"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 164
    iget-object v5, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateY"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 165
    iget-object v8, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateZ"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 167
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v1

    .line 168
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v10, p2

    .line 171
    invoke-virtual {v10, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 173
    new-instance v11, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v12, v1, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {v11, v12, v13, v3}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 174
    new-instance v12, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->right:I

    invoke-direct {v12, v3, v13, v4}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 175
    new-instance v3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v1, v5}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 176
    new-instance v5, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v1, v9, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v1, v4, v2}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 178
    iget-object v9, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v13, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v14, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v3

    move v3, v8

    move-object v4, v12

    move-object/from16 v7, p4

    move-object v8, v9

    move-object v9, v13

    move-object v10, v14

    invoke-static/range {v0 .. v10}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
