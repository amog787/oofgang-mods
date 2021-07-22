.class public Lcom/android/settings/fuelgauge/BatteryActiveView;
.super Landroid/view/View;
.source "BatteryActiveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawColor(Landroid/graphics/Canvas;IIIF)V
    .locals 6

    if-nez p4, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    div-float/2addr p2, p5

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float v1, p2, p4

    const/4 v2, 0x0

    int-to-float p2, p3

    div-float/2addr p2, p5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float v3, p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getColorArray()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getPeriod()J

    move-result-wide v1

    long-to-float v1, v1

    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 57
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    move-object v3, p0

    move-object v4, p1

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/BatteryActiveView;->drawColor(Landroid/graphics/Canvas;IIIF)V

    move v2, v9

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
