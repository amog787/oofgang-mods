.class public Lcom/google/android/material/seekbar/TickSeekBar;
.super Landroid/widget/SeekBar;
.source "TickSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/seekbar/TickSeekBar$TickData;
    }
.end annotation


# instance fields
.field private mMaxProgress:I

.field private mMeasureHeight:I

.field private mPaddingLeft:I

.field private mSeekBlockLength:F

.field private mStockPaint:Landroid/graphics/Paint;

.field private mTickColor:I

.field private mTickDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/seekbar/TickSeekBar$TickData;",
            ">;"
        }
    .end annotation
.end field

.field private mTickDisabledColor:I

.field private mTickInactiveColor:I

.field private mTrackY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/seekbar/TickSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/seekbar/TickSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->initStrokePaint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/seekbar/TickSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->initStrokePaint()V

    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 119
    iget v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mSeekBlockLength:F

    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/seekbar/TickSeekBar$TickData;

    invoke-virtual {v2}, Lcom/google/android/material/seekbar/TickSeekBar$TickData;->getLocation()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_1

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 125
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->getThumbPosOnTick()F

    move-result v2

    sub-float v3, v2, v1

    .line 126
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_5

    .line 129
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->oneplus_control_tick_seekbar_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 130
    iget v4, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTrackY:F

    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMeasureHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v4, v3

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v4, v5

    cmpg-float v2, v2, v1

    if-gez v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickInactiveColor:I

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDisabledColor:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 134
    :cond_5
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickColor:I

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDisabledColor:I

    :goto_3
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    add-float/2addr v4, v3

    .line 137
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_6
    return-void
.end method

.method private getThumbPosOnTick()F
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 143
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/google/android/material/R$styleable;->TickSeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget p2, Lcom/google/android/material/R$styleable;->TickSeekBar_seekbarTickColor:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_seek_bar_tick_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickColor:I

    .line 66
    sget p2, Lcom/google/android/material/R$styleable;->TickSeekBar_seekbarInActiveTickColor:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_seek_bar_tick_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickInactiveColor:I

    .line 67
    sget p2, Lcom/google/android/material/R$styleable;->TickSeekBar_seekbarTickDisabledColor:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_seek_bar_tick_disabled_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDisabledColor:I

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initSeekBarInfo()V
    .locals 4

    .line 80
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMeasureHeight:I

    .line 82
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mPaddingLeft:I

    .line 83
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    .line 85
    iget v3, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 86
    iget v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mSeekBlockLength:F

    int-to-float v0, v2

    .line 87
    iput v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTrackY:F

    .line 88
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMaxProgress:I

    .line 89
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 90
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    return-void
.end method

.method private initStrokePaint()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initTickLocation(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/seekbar/TickSeekBar$TickData;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/material/seekbar/TickSeekBar;->drawTicks(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->initSeekBarInfo()V

    return-void
.end method

.method public setTickSegmentCount(I)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_1

    .line 158
    new-instance v1, Lcom/google/android/material/seekbar/TickSeekBar$TickData;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/2addr v2, p1

    mul-int/2addr v2, v0

    int-to-float v2, v2

    invoke-direct {v1, v2}, Lcom/google/android/material/seekbar/TickSeekBar$TickData;-><init>(F)V

    .line 159
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setTicks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/seekbar/TickSeekBar$TickData;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->initStrokePaint()V

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/material/seekbar/TickSeekBar;->initTickLocation(Ljava/util/List;)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method
