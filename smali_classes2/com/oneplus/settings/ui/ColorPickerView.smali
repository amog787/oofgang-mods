.class public Lcom/oneplus/settings/ui/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHueIndicatorPaint:Landroid/graphics/Paint;

.field private mHueIndicatorWidth:F

.field private mHueInidcatorOffset:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHuePanelHeight:F

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTouchRect:Landroid/graphics/RectF;

.field private mIndicatorBlurRadius:F

.field private mIndicatorBorderWidth:F

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

.field private mMarginTop:F

.field private mMinHeight:F

.field private mMinWidth:F

.field private mPadding:F

.field private mPanelSpacing:F

.field private mPanelWidth:F

.field private mSVIndicatorPaint:Landroid/graphics/Paint;

.field private mSVIndicatorWidth:F

.field private mSVPanelHeight:F

.field private mSat:F

.field private mSatPaint:Landroid/graphics/Paint;

.field private mSatRect:Landroid/graphics/RectF;

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatTouchRect:Landroid/graphics/RectF;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTouchRect:Landroid/graphics/RectF;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValPaint:Landroid/graphics/Paint;

.field private mValRect:Landroid/graphics/RectF;

.field private mValShader:Landroid/graphics/Shader;

.field private mValTouchRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    const/high16 p1, 0x43b40000    # 360.0f

    .line 79
    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    .line 81
    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    .line 101
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->init()V

    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 10

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 300
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    const/16 v1, 0x169

    new-array v7, v1, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x168

    if-gt v2, v4, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [F

    int-to-float v5, v2

    aput v5, v4, v1

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v8, 0x2

    aput v6, v4, v8

    .line 304
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v7, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v5

    goto :goto_0

    .line 306
    :cond_0
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v4, v6

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 314
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 320
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    .line 321
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 323
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 324
    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 325
    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 326
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 327
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 329
    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatPanel(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 226
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    .line 227
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, -0x1

    move-object v3, v0

    move v5, v7

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 230
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 233
    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 236
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 237
    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 238
    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 240
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 242
    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawValPanel(Landroid/graphics/Canvas;)V
    .locals 9

    .line 252
    new-instance v8, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    move-object v0, v8

    move v2, v4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 255
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 258
    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 261
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 262
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 263
    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 264
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 265
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 267
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 3

    .line 334
    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 335
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 337
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 338
    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 339
    iget p0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v1, Landroid/graphics/Point;->x:I

    return-object v1
.end method

.method private init()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    sget v1, Lcom/android/settings/R$dimen;->panel_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panel width 375dp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorPickerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device width pixels:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    .line 119
    sget v2, Lcom/android/settings/R$dimen;->margin_top2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    .line 120
    sget v2, Lcom/android/settings/R$dimen;->margin_left2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 122
    sget v2, Lcom/android/settings/R$dimen;->hue_panel_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    .line 123
    sget v2, Lcom/android/settings/R$dimen;->sat_val_panel_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVPanelHeight:F

    .line 125
    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    iput v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinWidth:F

    .line 126
    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v3, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinHeight:F

    .line 128
    sget v2, Lcom/android/settings/R$dimen;->indicator_corner_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    .line 129
    sget v2, Lcom/android/settings/R$dimen;->indicator_shadow_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    .line 130
    sget v2, Lcom/android/settings/R$dimen;->indicator_border_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    .line 131
    sget v2, Lcom/android/settings/R$color;->indicator_border_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    .line 132
    sget v2, Lcom/android/settings/R$dimen;->hue_indicator_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    .line 133
    sget v2, Lcom/android/settings/R$dimen;->hue_indicator_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    .line 134
    iput v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorWidth:F

    .line 135
    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    .line 136
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->initPaintTools()V

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 5

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    .line 147
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    const/4 v3, 0x0

    const v4, -0x777778

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    .line 154
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    invoke-virtual {v0, p0, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private static isUnspecified(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pointToHue(F)F
    .locals 3

    .line 477
    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 478
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 480
    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 482
    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    sub-float p0, p1, v1

    :goto_0
    const/high16 p1, 0x43b40000    # 360.0f

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    return p0
.end method

.method private pointToSat(FF)F
    .locals 2

    .line 425
    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    .line 428
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    .line 430
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 432
    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    sub-float p0, p1, v0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    mul-float/2addr p1, p0

    return p1
.end method

.method private pointToVal(FF)F
    .locals 2

    .line 459
    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    .line 462
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    .line 464
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 466
    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    sub-float p0, p1, v0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    div-float p2, p1, p2

    mul-float/2addr p2, p0

    sub-float/2addr p1, p2

    return p1
.end method

.method private setupHueRect()V
    .locals 5

    .line 602
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 603
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 604
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 605
    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v3, v2

    .line 606
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 607
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 608
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueTouchRect:Landroid/graphics/RectF;

    .line 609
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 610
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 611
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    add-float/2addr v2, p0

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 612
    iget p0, v1, Landroid/graphics/RectF;->bottom:F

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setupSatValRect()V
    .locals 9

    .line 569
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 570
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 571
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    add-float/2addr v2, v3

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr v2, v4

    .line 572
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v3

    .line 573
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 574
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 575
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValTouchRect:Landroid/graphics/RectF;

    .line 576
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    sub-float/2addr v5, v8

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 577
    iget v5, v4, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 578
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 579
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 581
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v0, v2

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr v0, v4

    add-float/2addr v2, v0

    .line 583
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    .line 584
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatTouchRect:Landroid/graphics/RectF;

    .line 585
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 586
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 587
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 588
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 590
    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr v2, v0

    .line 591
    iget v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v0, v2

    .line 592
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    .line 593
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValTouchRect:Landroid/graphics/RectF;

    .line 594
    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 595
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 596
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 597
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 519
    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 520
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 521
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueTouchRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->pointToHue(F)F

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    :goto_0
    move v1, v4

    goto :goto_1

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->pointToSat(FF)F

    move-result p1

    .line 533
    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    goto :goto_0

    .line 535
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->pointToVal(FF)F

    move-result p1

    .line 543
    iput p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public getColor()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 620
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget p0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    const/4 v1, 0x2

    aput p0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->drawSatPanel(Landroid/graphics/Canvas;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->drawValPanel(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 164
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 166
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 168
    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerView;->isUnspecified(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinWidth:F

    float-to-int p1, p1

    .line 169
    :cond_0
    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerView;->isUnspecified(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinHeight:F

    float-to-int p2, p2

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 558
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 559
    iget p4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 560
    iget-object p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    iget p4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    sub-float/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p1, p4

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 561
    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p1, Landroid/graphics/RectF;->top:F

    .line 562
    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget p3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 563
    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    .line 564
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setupSatValRect()V

    .line 565
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setupHueRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 499
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    .line 503
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 495
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    .line 496
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    .line 507
    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 508
    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v4, v0, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    aput v2, v0, v3

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 510
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 513
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 629
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    .line 630
    aget v2, v1, p1

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v3, 0x1

    .line 631
    aget v4, v1, v3

    iput v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    const/4 v5, 0x2

    .line 632
    aget v1, v1, v5

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    if-eqz p2, :cond_0

    .line 633
    iget-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz p2, :cond_0

    new-array v0, v0, [F

    aput v2, v0, p1

    aput v4, v0, v3

    aput v1, v0, v5

    .line 634
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 636
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    return-void
.end method
