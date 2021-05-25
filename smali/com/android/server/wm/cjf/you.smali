.class public Lcom/android/server/wm/cjf/you;
.super Landroid/view/animation/ClipRectAnimation;
.source ""


# instance fields
.field private final sis:Landroid/view/animation/Interpolator;

.field private tsu:F

.field private final you:I

.field private final zta:I


# direct methods
.method public constructor <init>(IIIIIILandroid/view/animation/Interpolator;)V
    .locals 10

    move-object v9, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    move v0, p5

    iput v0, v9, Lcom/android/server/wm/cjf/you;->zta:I

    move/from16 v0, p6

    iput v0, v9, Lcom/android/server/wm/cjf/you;->you:I

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/server/wm/cjf/you;->sis:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/cjf/you;->sis:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/server/wm/cjf/you;->tsu:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/cjf/you;->zta:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/server/wm/cjf/you;->you:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v0

    iget-object p0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v4, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/2addr v0, p0

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v4, v3, v0, p0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/animation/ClipRectAnimation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/ClipRectAnimation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/ClipRectAnimation;->getStartTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    sub-long v0, p1, v4

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/ClipRectAnimation;->getStartTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/android/server/wm/cjf/you;->tsu:F

    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/ClipRectAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p0

    return p0
.end method
