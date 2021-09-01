.class public Lcom/google/android/material/widget/ProgressButton;
.super Landroid/view/View;
.source "ProgressButton.java"


# instance fields
.field private DEFAULT_HEIGHT_DP:I

.field private bgPaint:Landroid/graphics/Paint;

.field private bgRectf:Landroid/graphics/RectF;

.field bitmapShader:Landroid/graphics/BitmapShader;

.field private borderWidth:I

.field private maxProgress:F

.field private pgBitmap:Landroid/graphics/Bitmap;

.field private pgCanvas:Landroid/graphics/Canvas;

.field private pgPaint:Landroid/graphics/Paint;

.field private progress:F

.field private progressColor:I

.field private progressText:Ljava/lang/String;

.field private radius:I

.field private textPaint:Landroid/graphics/Paint;

.field private textRect:Landroid/graphics/Rect;

.field private textSize:I

.field private xfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/widget/ProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/widget/ProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/google/android/material/widget/ProgressButton;->xfermode:Landroid/graphics/PorterDuffXfermode;

    const/16 p1, 0x23

    .line 23
    iput p1, p0, Lcom/google/android/material/widget/ProgressButton;->DEFAULT_HEIGHT_DP:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 27
    iput p1, p0, Lcom/google/android/material/widget/ProgressButton;->maxProgress:F

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/google/android/material/widget/ProgressButton;->progressText:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p2}, Lcom/google/android/material/widget/ProgressButton;->initAttrs(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private dp2px(I)I
    .locals 0

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawBackGround(Landroid/graphics/Canvas;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/google/android/material/widget/ProgressButton;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawColorProgressText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 246
    iget v3, p0, Lcom/google/android/material/widget/ProgressButton;->progress:F

    iget v4, p0, Lcom/google/android/material/widget/ProgressButton;->maxProgress:F

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 249
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 251
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->progressText:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/material/widget/ProgressButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget v0, p0, Lcom/google/android/material/widget/ProgressButton;->progress:F

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->maxProgress:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 206
    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->pgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 207
    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->pgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 208
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 209
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 212
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->xfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 213
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 217
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->pgBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 218
    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->pgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 219
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/google/android/material/widget/ProgressButton;->pgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->progressText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/widget/ProgressButton;->textRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 233
    iget-object v2, p0, Lcom/google/android/material/widget/ProgressButton;->progressText:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/material/widget/ProgressButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 6

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgPaint:Landroid/graphics/Paint;

    .line 116
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgPaint:Landroid/graphics/Paint;

    .line 120
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textPaint:Landroid/graphics/Paint;

    .line 123
    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->textRect:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->bgRectf:Landroid/graphics/RectF;

    .line 134
    invoke-direct {p0}, Lcom/google/android/material/widget/ProgressButton;->initPgBimap()V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/R$styleable;->ProgressButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    :try_start_0
    sget v0, Lcom/google/android/material/R$styleable;->ProgressButton_progress_textSize:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/widget/ProgressButton;->textSize:I

    .line 105
    sget v0, Lcom/google/android/material/R$styleable;->ProgressButton_progress_loadingColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/widget/ProgressButton;->progressColor:I

    .line 107
    sget v0, Lcom/google/android/material/R$styleable;->ProgressButton_progress_radius:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/widget/ProgressButton;->radius:I

    .line 108
    sget v0, Lcom/google/android/material/R$styleable;->ProgressButton_progress_borderWidth:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private initPgBimap()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/widget/ProgressButton;->borderWidth:I

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgBitmap:Landroid/graphics/Bitmap;

    .line 139
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/widget/ProgressButton;->pgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/material/widget/ProgressButton;->pgCanvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 0

    .line 276
    iget p0, p0, Lcom/google/android/material/widget/ProgressButton;->progress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/material/widget/ProgressButton;->drawBackGround(Landroid/graphics/Canvas;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/material/widget/ProgressButton;->drawProgress(Landroid/graphics/Canvas;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/material/widget/ProgressButton;->drawProgressText(Landroid/graphics/Canvas;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/material/widget/ProgressButton;->drawColorProgressText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 147
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 148
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 152
    :cond_0
    iget p2, p0, Lcom/google/android/material/widget/ProgressButton;->DEFAULT_HEIGHT_DP:I

    invoke-direct {p0, p2}, Lcom/google/android/material/widget/ProgressButton;->dp2px(I)I

    move-result p2

    .line 161
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 163
    iget-object p1, p0, Lcom/google/android/material/widget/ProgressButton;->pgBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/google/android/material/widget/ProgressButton;->init()V

    :cond_2
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 257
    iget v0, p0, Lcom/google/android/material/widget/ProgressButton;->maxProgress:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 258
    iput p1, p0, Lcom/google/android/material/widget/ProgressButton;->progress:F

    goto :goto_0

    .line 260
    :cond_0
    iput v0, p0, Lcom/google/android/material/widget/ProgressButton;->progress:F

    .line 262
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/android/material/widget/ProgressButton;->progressText:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
