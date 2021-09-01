.class public Lcom/google/android/material/tooltipview/TooltipView;
.super Landroid/widget/LinearLayout;
.source "TooltipView.java"


# instance fields
.field private color:I

.field private mArrowHeight:I

.field private mArrowPath:Landroid/graphics/Path;

.field private mArrowWidth:I

.field private mBody:Landroid/graphics/RectF;

.field private mCancelAction:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mDirection:I

.field private mMessage:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mRadius:I

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tooltipview/TooltipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mBody:Landroid/graphics/RectF;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 46
    iput p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$layout;->control_tooltip_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/google/android/material/tooltipview/TooltipView;->initView()V

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_control_radius_r12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->control_tooltip_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->control_tooltip_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    .line 70
    invoke-direct {p0}, Lcom/google/android/material/tooltipview/TooltipView;->initPaint()V

    .line 71
    iget p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/tooltipview/TooltipView;->setDirection(IF)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 222
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 223
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    .line 224
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->op_control_system_color_tips_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->color:I

    .line 226
    iget-object v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    iget-object p0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 215
    sget v0, Lcom/google/android/material/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mContentView:Landroid/widget/LinearLayout;

    .line 216
    sget v0, Lcom/google/android/material/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mMessage:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/google/android/material/R$id;->tooltips_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mCancelAction:Landroid/widget/ImageView;

    return-void
.end method

.method private updateMargin()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 382
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 383
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 384
    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 375
    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 376
    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 377
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 378
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 369
    :cond_2
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 370
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 371
    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 372
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 363
    :cond_3
    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 364
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 365
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 366
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 389
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 234
    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v4, v0, :cond_0

    .line 235
    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    .line 237
    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    .line 239
    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    .line 241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v6, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/google/android/material/tooltipview/TooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 247
    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    if-ne v4, v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_4
    if-ne v3, v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_5
    if-ne v2, v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_6
    if-ne v1, v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object p0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setDirection(IF)V
    .locals 4

    .line 261
    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    .line 262
    iput p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 264
    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    goto :goto_0

    :cond_0
    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    .line 266
    iput v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 269
    :cond_1
    :goto_0
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    .line 270
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/4 p2, 0x3

    .line 272
    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v0, :cond_4

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    .line 274
    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 275
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 276
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 277
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 279
    iput v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 280
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 281
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr v0, v1

    invoke-direct {p2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 282
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    iget v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 284
    :cond_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 285
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v0, v0

    div-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 286
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 288
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 289
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 290
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_4
    const/4 p2, 0x4

    if-ne p2, v0, :cond_7

    .line 293
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_5

    .line 294
    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 295
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 296
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v0, v0

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 297
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    neg-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    .line 299
    iput v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 300
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 301
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    neg-int v0, v0

    invoke-direct {p2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 302
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    .line 304
    :cond_6
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 305
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v0, v0

    div-int/2addr v0, v2

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 306
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 308
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 309
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_7
    const/4 p2, 0x1

    if-ne p2, v0, :cond_a

    .line 313
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_8

    .line 314
    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 315
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 316
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr v0, v1

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 317
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    .line 318
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 319
    iput v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 320
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 321
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr v0, v1

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 322
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    .line 324
    :cond_9
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 325
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 326
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    iget v3, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v3, v3

    div-int/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 329
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 330
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 332
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_a
    if-ne v2, v0, :cond_d

    .line 334
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-eqz p2, :cond_b

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    .line 335
    iput p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 336
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 337
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    neg-int v0, v0

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 338
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 339
    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_c

    .line 340
    iput v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mPercent:F

    .line 341
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 342
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mRadius:I

    neg-int v0, v0

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 343
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 345
    :cond_c
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 346
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    neg-int v0, v0

    div-int/2addr v0, v2

    invoke-direct {p2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 347
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 349
    :goto_4
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 350
    iget-object v1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 351
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 352
    iget-object p2, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 354
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/google/android/material/tooltipview/TooltipView;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 355
    invoke-direct {p0}, Lcom/google/android/material/tooltipview/TooltipView;->updateMargin()V

    .line 356
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setWithCancelAction(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mCancelAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object p0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mCancelAction:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setmMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/google/android/material/tooltipview/TooltipView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
