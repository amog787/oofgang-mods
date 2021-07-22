.class public Landroidx/appcompat/widget/SmoothRoundLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothRoundLayout.java"


# instance fields
.field private mCornerPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mCornerRadius:F

.field private mDuffXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SmoothRoundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    sget v0, Landroidx/appcompat/R$attr;->SmoothRoundStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SmoothRoundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SmoothRoundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 50
    sget-object v0, Landroidx/appcompat/R$styleable;->SmoothRoundLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroidx/appcompat/R$dimen;->oneplus_smooth_round_radius:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    .line 53
    sget p3, Landroidx/appcompat/R$styleable;->SmoothRoundLayout_cornerRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerRadius:F

    .line 54
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 96
    iget-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    .line 102
    iget-object v3, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iget-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerRadius:F

    invoke-static {v0, v1}, Landroidx/appcompat/widget/SmoothCornerUtils;->calculateBezierCornerPaths(Landroid/graphics/RectF;F)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerPathList:Ljava/util/List;

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v3

    .line 73
    iget-object v4, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v1, v1

    sub-int v2, p1, v2

    int-to-float v2, v2

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    iget-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerRadius:F

    invoke-static {v0, v1}, Landroidx/appcompat/widget/SmoothCornerUtils;->calculateBezierCornerPaths(Landroid/graphics/RectF;F)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerPathList:Ljava/util/List;

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    iget-object p1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerRadius:F

    invoke-static {p1, v0}, Landroidx/appcompat/widget/SmoothCornerUtils;->calculateBezierCornerPaths(Landroid/graphics/RectF;F)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerPathList:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 89
    iput p1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerRadius:F

    .line 90
    iget-object v0, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mRectF:Landroid/graphics/RectF;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/SmoothCornerUtils;->calculateBezierCornerPaths(Landroid/graphics/RectF;F)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SmoothRoundLayout;->mCornerPathList:Ljava/util/List;

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
