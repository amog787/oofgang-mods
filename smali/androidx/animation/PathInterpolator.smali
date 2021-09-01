.class public Landroidx/animation/PathInterpolator;
.super Ljava/lang/Object;
.source "PathInterpolator.java"

# interfaces
.implements Landroidx/animation/Interpolator;


# instance fields
.field private mData:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroidx/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 95
    sget-object p1, Landroidx/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    sget-object p2, Landroidx/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    :goto_0
    invoke-direct {p0, p1}, Landroidx/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static floatEquals(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 246
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFractionAtIndex(I)F
    .locals 0

    .line 230
    iget-object p0, p0, Landroidx/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    aget p0, p0, p1

    return p0
.end method

.method private getNumOfPoints()I
    .locals 0

    .line 242
    iget-object p0, p0, Landroidx/animation/PathInterpolator;->mData:[F

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private getXAtIndex(I)F
    .locals 0

    .line 234
    iget-object p0, p0, Landroidx/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private getYAtIndex(I)F
    .locals 0

    .line 238
    iget-object p0, p0, Landroidx/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private initCubic(FFFF)V
    .locals 8

    .line 151
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 152
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 154
    invoke-direct {p0, v7}, Landroidx/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 5

    const v0, 0x3b03126f    # 0.002f

    .line 158
    invoke-static {p1, v0}, Landroidx/animation/PathUtils;->createKeyFrameData(Landroid/graphics/Path;F)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/animation/PathInterpolator;->mData:[F

    .line 160
    invoke-direct {p0}, Landroidx/animation/PathInterpolator;->getNumOfPoints()I

    move-result p1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Landroidx/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v1

    invoke-static {v1, v2}, Landroidx/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, -0x1

    .line 164
    invoke-direct {p0, v1}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    invoke-direct {p0, v1}, Landroidx/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v1

    invoke-static {v1, v4}, Landroidx/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    if-ge v0, p1, :cond_3

    .line 172
    invoke-direct {p0, v0}, Landroidx/animation/PathInterpolator;->getFractionAtIndex(I)F

    move-result v3

    .line 173
    invoke-direct {p0, v0}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v4

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    cmpl-float v2, v4, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    cmpg-float v1, v4, v1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v1, v4

    goto :goto_0

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot loop back on itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    .line 166
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initQuad(FF)V
    .locals 2

    .line 144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 146
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 147
    invoke-direct {p0, v0}, Landroidx/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 7

    const/4 v0, 0x4

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, v0}, Landroidx/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The path is null, which is created from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 122
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v3, 0x2

    .line 124
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x3

    .line 125
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-ne v4, v6, :cond_3

    if-nez v4, :cond_2

    .line 134
    invoke-direct {p0, v0, v1}, Landroidx/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 137
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 138
    invoke-direct {p0, v0, v1, v3, p1}, Landroidx/animation/PathInterpolator;->initCubic(FFFF)V

    :goto_0
    return-void

    .line 128
    :cond_3
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_4
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_5
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Landroidx/animation/PathInterpolator;->getNumOfPoints()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    add-int v4, v1, v2

    .line 208
    div-int/lit8 v4, v4, 0x2

    .line 209
    invoke-direct {p0, v4}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0, v2}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v3

    invoke-direct {p0, v1}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 218
    invoke-direct {p0, v1}, Landroidx/animation/PathInterpolator;->getYAtIndex(I)F

    move-result p0

    return p0

    .line 221
    :cond_4
    invoke-direct {p0, v1}, Landroidx/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    .line 224
    invoke-direct {p0, v1}, Landroidx/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v0

    .line 225
    invoke-direct {p0, v2}, Landroidx/animation/PathInterpolator;->getYAtIndex(I)F

    move-result p0

    sub-float/2addr p0, v0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method
