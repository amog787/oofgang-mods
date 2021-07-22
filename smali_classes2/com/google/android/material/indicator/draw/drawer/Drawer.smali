.class public Lcom/google/android/material/indicator/draw/drawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# instance fields
.field private basicDrawer:Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;

.field private colorDrawer:Lcom/google/android/material/indicator/draw/drawer/type/ColorDrawer;

.field private coordinateX:I

.field private coordinateY:I

.field private position:I

.field private wormDrawer:Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/draw/data/Indicator;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    new-instance v1, Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;-><init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->basicDrawer:Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;

    .line 28
    new-instance v1, Lcom/google/android/material/indicator/draw/drawer/type/ColorDrawer;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/indicator/draw/drawer/type/ColorDrawer;-><init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->colorDrawer:Lcom/google/android/material/indicator/draw/drawer/type/ColorDrawer;

    .line 29
    new-instance v1, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;-><init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->wormDrawer:Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;

    return-void
.end method


# virtual methods
.method public drawBasic(Landroid/graphics/Canvas;Z)V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->colorDrawer:Lcom/google/android/material/indicator/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->basicDrawer:Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;

    iget v3, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->position:I

    iget v5, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->coordinateX:I

    iget v6, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->coordinateY:I

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/indicator/draw/drawer/type/BasicDrawer;->draw(Landroid/graphics/Canvas;IZII)V

    :cond_0
    return-void
.end method

.method public drawWorm(Landroid/graphics/Canvas;Lcom/google/android/material/indicator/animation/data/Value;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->wormDrawer:Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;

    if-eqz v0, :cond_0

    .line 46
    iget v1, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->coordinateX:I

    iget p0, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;->draw(Landroid/graphics/Canvas;Lcom/google/android/material/indicator/animation/data/Value;II)V

    :cond_0
    return-void
.end method

.method public setup(III)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->position:I

    .line 40
    iput p2, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->coordinateX:I

    .line 41
    iput p3, p0, Lcom/google/android/material/indicator/draw/drawer/Drawer;->coordinateY:I

    return-void
.end method
