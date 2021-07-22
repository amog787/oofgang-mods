.class public Lcom/google/android/material/indicator/draw/DrawManager;
.super Ljava/lang/Object;
.source "DrawManager.java"


# instance fields
.field private drawController:Lcom/google/android/material/indicator/draw/controller/DrawController;

.field private indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

.field private measureController:Lcom/google/android/material/indicator/draw/controller/MeasureController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-direct {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    .line 25
    new-instance v1, Lcom/google/android/material/indicator/draw/controller/DrawController;

    invoke-direct {v1, v0}, Lcom/google/android/material/indicator/draw/controller/DrawController;-><init>(Lcom/google/android/material/indicator/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/google/android/material/indicator/draw/DrawManager;->drawController:Lcom/google/android/material/indicator/draw/controller/DrawController;

    .line 26
    new-instance v0, Lcom/google/android/material/indicator/draw/controller/MeasureController;

    invoke-direct {v0}, Lcom/google/android/material/indicator/draw/controller/MeasureController;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->measureController:Lcom/google/android/material/indicator/draw/controller/MeasureController;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->drawController:Lcom/google/android/material/indicator/draw/controller/DrawController;

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/controller/DrawController;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public indicator()Lcom/google/android/material/indicator/draw/data/Indicator;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-direct {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    return-object p0
.end method

.method public measureViewSize(II)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->measureController:Lcom/google/android/material/indicator/draw/controller/MeasureController;

    iget-object p0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/material/indicator/draw/controller/MeasureController;->measureViewSize(Lcom/google/android/material/indicator/draw/data/Indicator;II)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public setClickListener(Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->drawController:Lcom/google/android/material/indicator/draw/controller/DrawController;

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/controller/DrawController;->setClickListener(Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;)V

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->drawController:Lcom/google/android/material/indicator/draw/controller/DrawController;

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/controller/DrawController;->touch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public updateValue(Lcom/google/android/material/indicator/animation/data/Value;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/material/indicator/draw/DrawManager;->drawController:Lcom/google/android/material/indicator/draw/controller/DrawController;

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/controller/DrawController;->updateValue(Lcom/google/android/material/indicator/animation/data/Value;)V

    return-void
.end method
