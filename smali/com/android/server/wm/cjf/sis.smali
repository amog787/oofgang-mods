.class public Lcom/android/server/wm/cjf/sis;
.super Landroid/view/animation/ClipRectAnimation;
.source ""


# direct methods
.method public constructor <init>(IIII)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/2addr v2, p0

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    return-void
.end method
