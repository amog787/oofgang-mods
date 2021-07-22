.class public Lcom/oneplus/settings/opfinger/SvgView;
.super Landroid/view/View;
.source "SvgView.java"


# instance fields
.field private mDuration:I

.field private mFadeFactor:F

.field private mHaveMoved:Z

.field private mLoader:Ljava/lang/Thread;

.field private mOffsetY:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallax:F

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase:F

.field private final mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

.field private mSvgAnimator:Landroid/animation/ObjectAnimator;

.field private final mSvgLock:Ljava/lang/Object;

.field private mSvgResetAnimator:Landroid/animation/ObjectAnimator;

.field private mSvgResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/opfinger/SvgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/opfinger/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    iput v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    .line 49
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    .line 58
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    sget-object v2, Lcom/android/settings/R$styleable;->SvgView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 68
    iget-object p3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 p2, p2, 0x32

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget p3, Lcom/android/settings/R$styleable;->SvgView_lineColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget p2, Lcom/android/settings/R$styleable;->SvgView_phase:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    .line 73
    sget p2, Lcom/android/settings/R$styleable;->SvgView_duration:I

    const/16 p3, 0xfa0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    .line 74
    sget p2, Lcom/android/settings/R$styleable;->SvgView_fadeFactor:I

    const/high16 p3, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mFadeFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    :cond_0
    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 p0, 0x4

    new-array v5, p0, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
        -0x100
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/SvgView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/opfinger/SvgView;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/opfinger/SvgView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/opfinger/SvgView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V

    return-void
.end method

.method private updatePathsPhaseLocked()V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    .line 110
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object v3, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget v4, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->length:F

    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    mul-float/2addr v4, v5

    iget-object v5, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 114
    iget-object v2, v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getParallax()F
    .locals 0

    .line 119
    iget p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    return p0
.end method

.method public getPhase()F
    .locals 0

    .line 128
    iget p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    return p0
.end method

.method public getSvgResource()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 176
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mOffsetY:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    .line 186
    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mFadeFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 187
    iget-object v5, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    int-to-float v4, v4

    iget v6, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    iget-object v4, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    iget-object v3, v3, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 151
    iget-object p3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    if-eqz p3, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "SvgView"

    const-string v0, "Unexpected error"

    .line 155
    invoke-static {p4, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_0
    :goto_0
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/oneplus/settings/opfinger/SvgView$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/oneplus/settings/opfinger/SvgView$1;-><init>(Lcom/oneplus/settings/opfinger/SvgView;II)V

    const-string p1, "SVG Loader"

    invoke-direct {p3, p4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mLoader:Ljava/lang/Thread;

    .line 171
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 297
    fill-array-data v0, :array_0

    const-string v1, "phase"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public reveal(Z)V
    .locals 7

    .line 196
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "phase"

    const/4 v4, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    new-array v0, v4, [F

    .line 198
    fill-array-data v0, :array_0

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v4, [F

    .line 202
    fill-array-data v0, :array_1

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 210
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v4, [Landroid/animation/Animator;

    .line 211
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 212
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    new-array v0, v4, [F

    .line 216
    fill-array-data v0, :array_2

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    .line 217
    iget v5, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v4, [F

    .line 219
    fill-array-data v0, :array_3

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView;->mDuration:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 227
    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v4, [Landroid/animation/Animator;

    .line 228
    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 229
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 232
    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/SvgView;->mHaveMoved:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public revealWithoutAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResetAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 276
    fill-array-data v0, :array_0

    const-string v1, "phase"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setParallax(F)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mParallax:F

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPhase(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mPhase:F

    .line 133
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V

    .line 135
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :catchall_0
    move-exception p0

    .line 135
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setSvgResource(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I

    return-void
.end method
