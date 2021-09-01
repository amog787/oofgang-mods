.class public Lcom/google/android/material/indicator/draw/controller/DrawController;
.super Ljava/lang/Object;
.source "DrawController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;
    }
.end annotation


# instance fields
.field private drawer:Lcom/google/android/material/indicator/draw/drawer/Drawer;

.field private indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

.field private listener:Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;

.field private value:Lcom/google/android/material/indicator/animation/data/Value;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/draw/data/Indicator;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    .line 29
    new-instance v0, Lcom/google/android/material/indicator/draw/drawer/Drawer;

    invoke-direct {v0, p1}, Lcom/google/android/material/indicator/draw/drawer/Drawer;-><init>(Lcom/google/android/material/indicator/draw/data/Indicator;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->drawer:Lcom/google/android/material/indicator/draw/drawer/Drawer;

    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;III)V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    .line 81
    iget-object v3, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/google/android/material/indicator/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_3

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    or-int v0, v3, v4

    .line 86
    iget-object v1, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->drawer:Lcom/google/android/material/indicator/draw/drawer/Drawer;

    invoke-virtual {v1, p2, p3, p4}, Lcom/google/android/material/indicator/draw/drawer/Drawer;->setup(III)V

    .line 88
    iget-object p2, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->value:Lcom/google/android/material/indicator/animation/data/Value;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 89
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->drawer:Lcom/google/android/material/indicator/draw/drawer/Drawer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/indicator/draw/drawer/Drawer;->drawWorm(Landroid/graphics/Canvas;Lcom/google/android/material/indicator/animation/data/Value;)V

    goto :goto_2

    .line 91
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->drawer:Lcom/google/android/material/indicator/draw/drawer/Drawer;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/indicator/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

    :goto_2
    return-void
.end method

.method private onIndicatorTouched(FF)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->listener:Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getPosition(Lcom/google/android/material/indicator/draw/data/Indicator;FF)I

    move-result p1

    if-ltz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->listener:Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;

    invoke-interface {p0, p1}, Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;->onIndicatorClicked(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    iget-object v2, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-static {v2, v1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getXCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result v2

    .line 67
    iget-object v3, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getYCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result v3

    .line 68
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/material/indicator/draw/controller/DrawController;->drawIndicator(Landroid/graphics/Canvas;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->listener:Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/indicator/draw/controller/DrawController;->onIndicatorTouched(FF)V

    :goto_0
    return-void
.end method

.method public updateValue(Lcom/google/android/material/indicator/animation/data/Value;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/google/android/material/indicator/draw/controller/DrawController;->value:Lcom/google/android/material/indicator/animation/data/Value;

    return-void
.end method
