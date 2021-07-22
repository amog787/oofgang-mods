.class public Lcom/google/android/material/slider/Slider;
.super Landroid/view/View;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/Slider$SliderState;,
        Lcom/google/android/material/slider/Slider$LabelFormatter;,
        Lcom/google/android/material/slider/Slider$OnChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeTrackColor:Landroid/content/res/ColorStateList;

.field private final activeTrackPaint:Landroid/graphics/Paint;

.field private formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

.field private final haloPaint:Landroid/graphics/Paint;

.field private haloRadius:I

.field private inactiveTrackColor:Landroid/content/res/ColorStateList;

.field private final inactiveTrackPaint:Landroid/graphics/Paint;

.field private final label:Landroid/graphics/drawable/Drawable;

.field private labelHeight:I

.field private labelText:Ljava/lang/String;

.field private final labelTextBounds:Landroid/graphics/Rect;

.field private final labelTextPaint:Landroid/graphics/Paint;

.field private labelTextSize:F

.field private labelTextTopOffset:I

.field private labelTopOffset:I

.field private labelWidth:I

.field private lineHeight:I

.field private listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

.field private stepSize:F

.field private textColor:Landroid/content/res/ColorStateList;

.field private thumbColor:Landroid/content/res/ColorStateList;

.field private final thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;

.field private thumbPosition:F

.field private thumbRadius:I

.field private tickColor:Landroid/content/res/ColorStateList;

.field private ticksCoordinates:[F

.field private final ticksPaint:Landroid/graphics/Paint;

.field private trackSidePadding:I

.field private trackTop:I

.field private trackTopDiscrete:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private widgetHeight:I

.field private widgetHeightDiscrete:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const-class v0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    .line 153
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 245
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 249
    sget v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 164
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 185
    iput p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 195
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->loadResources(Landroid/content/res/Resources;)V

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/Slider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 256
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 257
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 261
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    .line 265
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 268
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    .line 269
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    .line 272
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$drawable;->mtrl_slider_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    .line 276
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 278
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    .line 279
    iget p2, p0, Lcom/google/android/material/slider/Slider;->labelTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelTextBounds:Landroid/graphics/Rect;

    .line 283
    new-instance p1, Lcom/google/android/material/slider/Slider$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/Slider$1;-><init>(Lcom/google/android/material/slider/Slider;)V

    invoke-super {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 291
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 292
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 295
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    return-void
.end method

.method private drawHalo(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 689
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    int-to-float p2, p3

    iget p3, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    int-to-float p3, p3

    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 662
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    iget p2, p0, Lcom/google/android/material/slider/Slider;->labelWidth:I

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 663
    iget v1, p0, Lcom/google/android/material/slider/Slider;->labelTopOffset:I

    sub-int/2addr p3, v1

    .line 664
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    add-int/2addr p2, v0

    iget v2, p0, Lcom/google/android/material/slider/Slider;->labelHeight:I

    add-int/2addr v2, p3

    invoke-virtual {v1, v0, p3, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 665
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->label:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 669
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->labelTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 670
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->labelTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    .line 671
    iget-object p2, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->labelTextTopOffset:I

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawMarker(Landroid/graphics/Canvas;II)V
    .locals 9

    .line 653
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float/2addr v2, p2

    add-float v6, v1, v2

    int-to-float v4, v0

    int-to-float v7, p3

    .line 654
    iget-object v8, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 677
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p3

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 681
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 682
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float p2, p2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    iget p2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 684
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 685
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTrack(Landroid/graphics/Canvas;II)V
    .locals 9

    .line 646
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float v4, v1, v2

    add-int v1, v0, p2

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_0

    int-to-float v7, p3

    add-int/2addr v0, p2

    int-to-float v6, v0

    .line 648
    iget-object v8, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .locals 1

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method private isValueValid(F)Z
    .locals 5

    .line 454
    sget-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget p0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v2, 0x0

    cmpl-float v4, p0, v2

    if-lez v4, :cond_1

    sub-float/2addr v1, p1

    rem-float/2addr v1, p0

    cmpl-float p0, v1, v2

    if-eqz p0, :cond_1

    const-string p0, "Value must be equal to valueFrom plus a multiple of stepSize when using stepSize"

    .line 459
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "Slider value must be greater or equal to valueFrom, and lower or equal to valueTo"

    .line 455
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 311
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->widgetHeight:I

    .line 312
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height_discrete:I

    .line 313
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->widgetHeightDiscrete:I

    .line 315
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_line_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->lineHeight:I

    .line 317
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    .line 318
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackTop:I

    .line 319
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top_discrete:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackTopDiscrete:I

    .line 321
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelWidth:I

    .line 322
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelHeight:I

    .line 323
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_top_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelTopOffset:I

    .line 324
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelTextSize:F

    .line 325
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_text_top_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/Slider;->labelTextTopOffset:I

    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 329
    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v4, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 330
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 332
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 333
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 334
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_value:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 335
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 337
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 339
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->Slider_inactiveTrackColor:I

    :goto_0
    if-eqz p3, :cond_1

    .line 341
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->Slider_activeTrackColor:I

    .line 344
    :goto_1
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackColor:Landroid/content/res/ColorStateList;

    .line 345
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->activeTrackColor:Landroid/content/res/ColorStateList;

    .line 346
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    .line 347
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 348
    sget p3, Lcom/google/android/material/R$styleable;->Slider_activeTickColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/slider/Slider;->tickColor:Landroid/content/res/ColorStateList;

    .line 349
    sget p3, Lcom/google/android/material/R$styleable;->Slider_labelColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->textColor:Landroid/content/res/ColorStateList;

    .line 351
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    .line 352
    sget p1, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    .line 354
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    .line 355
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueFrom()V

    .line 358
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueTo()V

    .line 359
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateStepSize()V

    return-void
.end method

.method private snapThumbPosition()V
    .locals 2

    .line 742
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 743
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 744
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    :cond_0
    return-void
.end method

.method private updateTrackWidthAndTicksCoordinates(I)V
    .locals 5

    .line 603
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    .line 604
    iget p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 605
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 606
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    .line 607
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    .line 609
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v0, v0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v2, p1, 0x2

    if-ge v1, v2, :cond_2

    .line 611
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    iget v3, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 612
    iget v4, p0, Lcom/google/android/material/slider/Slider;->trackTopDiscrete:I

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private validateStepSize()V
    .locals 5

    .line 377
    sget-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const-string v4, "The stepSize must be 0, or a factor of the valueFrom-valueTo range"

    if-ltz v3, :cond_2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 380
    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget p0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v3, p0

    rem-float/2addr v3, v1

    cmpl-float p0, v3, v2

    if-nez p0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateValueFrom()V
    .locals 1

    .line 363
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iget p0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    cmpl-float p0, v0, p0

    if-gez p0, :cond_0

    return-void

    .line 364
    :cond_0
    sget-object p0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    const-string v0, "valueFrom must be smaller than valueTo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateValueTo()V
    .locals 1

    .line 370
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget p0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    cmpg-float p0, v0, p0

    if-lez p0, :cond_0

    return-void

    .line 371
    :cond_0
    sget-object p0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    const-string v0, "valueTo must be greater than valueFrom"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 750
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 752
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->activeTrackColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->ticksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labelTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->textColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->thumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getHaloRadius()I
    .locals 0

    .line 585
    iget p0, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    return p0
.end method

.method public getStepSize()F
    .locals 0

    .line 472
    iget p0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    return p0
.end method

.method public getThumbElevation()F
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result p0

    return p0
.end method

.method public getThumbRadius()I
    .locals 0

    .line 568
    iget p0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    return p0
.end method

.method public getValue()F
    .locals 2

    .line 426
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget p0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public getValueFrom()F
    .locals 0

    .line 388
    iget p0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    return p0
.end method

.method public getValueTo()F
    .locals 0

    .line 407
    iget p0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    return p0
.end method

.method public hasLabelFormatter()Z
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOnChangeListener()Z
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 619
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 621
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackTopDiscrete:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackTop:I

    .line 623
    :goto_0
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/slider/Slider;->drawTrack(Landroid/graphics/Canvas;II)V

    .line 624
    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 625
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/slider/Slider;->drawMarker(Landroid/graphics/Canvas;II)V

    .line 627
    :cond_1
    iget v2, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 629
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawLabel(Landroid/graphics/Canvas;II)V

    .line 630
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawLabelText(Landroid/graphics/Canvas;II)V

    goto :goto_1

    .line 632
    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawThumb(Landroid/graphics/Canvas;II)V

    .line 634
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    if-eqz v0, :cond_5

    .line 635
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->drawTicks(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 638
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 639
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawHalo(Landroid/graphics/Canvas;II)V

    .line 641
    :cond_4
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawThumb(Landroid/graphics/Canvas;II)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 590
    iget p2, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget p2, p0, Lcom/google/android/material/slider/Slider;->widgetHeightDiscrete:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/material/slider/Slider;->widgetHeight:I

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 592
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 590
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 782
    check-cast p1, Lcom/google/android/material/slider/Slider$SliderState;

    .line 783
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 785
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 786
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 787
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->thumbPosition:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 788
    iget v0, p1, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    iput v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 789
    iget-boolean p1, p1, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 793
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 770
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 771
    new-instance v1, Lcom/google/android/material/slider/Slider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/Slider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 772
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    .line 773
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    .line 774
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->thumbPosition:F

    .line 775
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    iput v0, v1, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    .line 776
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 598
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 599
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->updateTrackWidthAndTicksCoordinates(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 694
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 697
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 698
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 699
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 700
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 715
    :cond_1
    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 716
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapThumbPosition()V

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 718
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 719
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    goto :goto_0

    .line 723
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 724
    iput-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 725
    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 726
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapThumbPosition()V

    .line 727
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 704
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 706
    iput-boolean v2, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 707
    iput v0, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 708
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapThumbPosition()V

    .line 709
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 710
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 711
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    .line 732
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result p1

    .line 733
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 734
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    invoke-interface {v0, p1}, Lcom/google/android/material/slider/Slider$LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    goto :goto_2

    :cond_5
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_6

    const-string v0, "%.0f"

    goto :goto_1

    :cond_6
    const-string v0, "%.2f"

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 736
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->labelText:Ljava/lang/String;

    :goto_2
    return v2
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 300
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setHaloRadius(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    .line 574
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setHaloRadius(I)V

    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/Slider$LabelFormatter;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    return-void
.end method

.method public setOnChangeListener(Lcom/google/android/material/slider/Slider$OnChangeListener;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    .line 493
    iput p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 494
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateStepSize()V

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setThumbElevation(F)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 3

    .line 551
    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    .line 553
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 554
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 553
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 555
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 445
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->isValueValid(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbPosition:F

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasOnChangeListener()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/google/android/material/slider/Slider;->listener:Lcom/google/android/material/slider/Slider$OnChangeListener;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;F)V

    :cond_0
    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 402
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueFrom()V

    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 421
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueTo()V

    return-void
.end method
