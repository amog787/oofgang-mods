.class public Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;
.super Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;
.source "BasicDrawer.java"


# instance fields
.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/google/android/material/indicator/draw/data/Indicator;->getStroke()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IZII)V
    .locals 3

    .line 31
    iget-object p3, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {p3}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result p3

    int-to-float p3, p3

    .line 33
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getUnselectedColor()I

    move-result v1

    .line 35
    iget-object v2, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 42
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p4

    int-to-float p4, p5

    .line 44
    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
