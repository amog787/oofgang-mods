.class public Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;,
        Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
    }
.end annotation


# instance fields
.field private mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

.field mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0, v0, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 163
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 166
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 735
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 180
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 182
    iput-object p2, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;-><init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "AnimatedVDCompat"

    .line 214
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 215
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 216
    invoke-static {v1, p1, p0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object p1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    new-instance p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object p1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 226
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 227
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 229
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 236
    invoke-static {p0, v3, p1, v2, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p0

    return-object p0

    .line 234
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 241
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 239
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private static registerPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 822
    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    return-void
.end method

.method private removeAnimatorSetListener()V
    .locals 2

    .line 829
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 830
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    .line 831
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    :cond_0
    return-void
.end method

.method private setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2

    .line 684
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 685
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 687
    invoke-direct {p0, p2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 689
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 691
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    .line 693
    :cond_1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupColorAnimator(Landroid/animation/Animator;)V
    .locals 3

    .line 663
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 664
    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 666
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 667
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-direct {p0, v2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 672
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 673
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillColor"

    .line 674
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    :cond_1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    .line 676
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 678
    :cond_2
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 524
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 525
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 534
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 535
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    .line 858
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 860
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    return-void

    .line 863
    :cond_0
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->removeAnimatorSetListener()V

    .line 864
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    return-void

    .line 868
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 291
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    .line 326
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    .line 281
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 349
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 350
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    .line 352
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 267
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 268
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 425
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 414
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    .line 417
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 1

    .line 406
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    .line 409
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    move-result p0

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 449
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 452
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 453
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_0
    if-eq v0, v2, :cond_8

    .line 457
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 459
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "animated-vector"

    .line 463
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 464
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

    .line 465
    invoke-static {p1, p4, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    invoke-static {p1, v3, p4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v3

    .line 476
    invoke-virtual {v3, v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 477
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 478
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 479
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 481
    :cond_2
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iput-object v3, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 483
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_4
    const-string v3, "target"

    .line 484
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 485
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

    .line 486
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 488
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_6

    .line 495
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    .line 498
    invoke-static {v5, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 500
    invoke-direct {p0, v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V

    goto :goto_1

    .line 502
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context can\'t be null when inflating animators"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    :cond_7
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 513
    :cond_8
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->setupAnimatorSet()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 431
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 433
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 702
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 704
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p0

    return p0

    .line 706
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 396
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    .line 399
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    move-result p0

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 302
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 318
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 307
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 310
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setState([I)Z

    move-result p0

    return p0
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    .line 765
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 767
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerPlatformCallback(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 780
    :cond_2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 785
    :cond_3
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez p1, :cond_4

    .line 790
    new-instance p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    invoke-direct {p1, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 812
    :cond_4
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 331
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 335
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 438
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 442
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAutoMirrored(Z)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 344
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 362
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 368
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 372
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 377
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 378
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 382
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    .line 390
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    .line 391
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 1

    .line 711
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 713
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 722
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 729
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    .line 732
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
