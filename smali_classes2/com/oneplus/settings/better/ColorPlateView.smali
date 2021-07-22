.class public Lcom/oneplus/settings/better/ColorPlateView;
.super Landroid/view/View;
.source "ColorPlateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;
    }
.end annotation


# instance fields
.field private mBmpColorPlate:Landroid/graphics/Bitmap;

.field private mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

.field private mColorPlateMargin:I

.field private mCurrentXProgress:I

.field private mCurrentYProgress:I

.field private mHeightSelectBox:I

.field private mIntrinsicHeightColorPlate:I

.field private mIntrinsicWidthColorPlate:I

.field mLastXProgress:I

.field mLastYProgress:I

.field private mMaxXProgress:I

.field private mMaxYProgress:I

.field private mPaintColorPlate:Landroid/graphics/Paint;

.field private mPaintSelectBox:Landroid/graphics/Paint;

.field private mRectColorPlate:Landroid/graphics/Rect;

.field private mRectSelectBox:Landroid/graphics/RectF;

.field private mSelectBoxCornerRadius:F

.field private mWidthSelectBox:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    const/16 p1, 0x64

    .line 47
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    .line 48
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    .line 63
    invoke-direct {p0}, Lcom/oneplus/settings/better/ColorPlateView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    const/16 p1, 0x64

    .line 47
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    .line 48
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    .line 68
    invoke-direct {p0}, Lcom/oneplus/settings/better/ColorPlateView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    const/16 p1, 0x64

    .line 47
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    .line 48
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    .line 73
    invoke-direct {p0}, Lcom/oneplus/settings/better/ColorPlateView;->init()V

    return-void
.end method

.method private calculateXProgress(I)I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private calculateYProgress(I)I
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 284
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 285
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 287
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 288
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 289
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 290
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 291
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private init()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->op_img_color_plate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/better/ColorPlateView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->indicator_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mSelectBoxCornerRadius:F

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicWidthColorPlate:I

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicHeightColorPlate:I

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->hue_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mWidthSelectBox:I

    .line 85
    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mHeightSelectBox:I

    int-to-float v0, v0

    const v1, 0x3f6147ae    # 0.88f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 86
    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorPlateMargin:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->indicator_border_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->indicator_border_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->indicator_shadow_radius:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 v1, 0x0

    const v2, -0x777778

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private measureWidth(I)I
    .locals 2

    .line 193
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 194
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    const/16 v1, 0x360

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_2

    :cond_0
    move p1, v1

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method public getColorChangeListener()Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    return-object p0
.end method

.method public getMaxXProgress()I
    .locals 0

    .line 268
    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    return p0
.end method

.method public getMaxYProgress()I
    .locals 0

    .line 276
    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    return p0
.end method

.method public getXYProgress()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 253
    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mSelectBoxCornerRadius:F

    iget-object p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/ColorPlateView;->measureWidth(I)I

    move-result p1

    .line 118
    iget p2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicHeightColorPlate:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicWidthColorPlate:I

    div-int/2addr p2, v0

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorPlateMargin:I

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 123
    iput p0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    .line 124
    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    .line 125
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 137
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_1

    move v0, v2

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_2

    move v0, v2

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_3

    move v1, v2

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_4

    move v1, v2

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mWidthSelectBox:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 143
    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mHeightSelectBox:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x2

    .line 144
    div-int/2addr v3, v5

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 145
    div-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 149
    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iput v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastXProgress:I

    .line 150
    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iput v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastYProgress:I

    .line 152
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/ColorPlateView;->calculateXProgress(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    .line 153
    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/ColorPlateView;->calculateYProgress(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v5, :cond_5

    goto :goto_0

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastXProgress:I

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    sub-int/2addr p1, v1

    .line 164
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastYProgress:I

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    sub-int/2addr p1, v1

    .line 165
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, v0, :cond_9

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;->colorChanged(IIII)V

    goto :goto_0

    .line 171
    :cond_7
    iget-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    if-eqz p1, :cond_9

    .line 172
    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;->onStopTrackingTouch(IIII)V

    goto :goto_0

    .line 157
    :cond_8
    iget-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    if-eqz p1, :cond_9

    .line 158
    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget p0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;->onStartTrackingTouch(IIII)V

    :cond_9
    :goto_0
    return v0
.end method

.method public setColorChangeListener(Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    return-void
.end method

.method public setMaxXProgress(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    return-void
.end method

.method public setMaxYProgress(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    return-void
.end method
