.class public Lcom/google/android/material/indicator/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/indicator/IndicatorManager$Listener;
    }
.end annotation


# instance fields
.field private animationManager:Lcom/google/android/material/indicator/animation/AnimationManager;

.field private drawManager:Lcom/google/android/material/indicator/draw/DrawManager;

.field private listener:Lcom/google/android/material/indicator/IndicatorManager$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/material/indicator/IndicatorManager$Listener;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/material/indicator/IndicatorManager;->listener:Lcom/google/android/material/indicator/IndicatorManager$Listener;

    .line 23
    new-instance p1, Lcom/google/android/material/indicator/draw/DrawManager;

    invoke-direct {p1}, Lcom/google/android/material/indicator/draw/DrawManager;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/indicator/IndicatorManager;->drawManager:Lcom/google/android/material/indicator/draw/DrawManager;

    .line 24
    new-instance v0, Lcom/google/android/material/indicator/animation/AnimationManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/DrawManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/indicator/animation/AnimationManager;-><init>(Lcom/google/android/material/indicator/draw/data/Indicator;Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/IndicatorManager;->animationManager:Lcom/google/android/material/indicator/animation/AnimationManager;

    return-void
.end method


# virtual methods
.method public animate()Lcom/google/android/material/indicator/animation/AnimationManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/indicator/IndicatorManager;->animationManager:Lcom/google/android/material/indicator/animation/AnimationManager;

    return-object p0
.end method

.method public drawer()Lcom/google/android/material/indicator/draw/DrawManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/material/indicator/IndicatorManager;->drawManager:Lcom/google/android/material/indicator/draw/DrawManager;

    return-object p0
.end method

.method public indicator()Lcom/google/android/material/indicator/draw/data/Indicator;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/material/indicator/IndicatorManager;->drawManager:Lcom/google/android/material/indicator/draw/DrawManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/DrawManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    return-object p0
.end method

.method public onValueUpdated(Lcom/google/android/material/indicator/animation/data/Value;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/material/indicator/IndicatorManager;->drawManager:Lcom/google/android/material/indicator/draw/DrawManager;

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/DrawManager;->updateValue(Lcom/google/android/material/indicator/animation/data/Value;)V

    .line 42
    iget-object p0, p0, Lcom/google/android/material/indicator/IndicatorManager;->listener:Lcom/google/android/material/indicator/IndicatorManager$Listener;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Lcom/google/android/material/indicator/IndicatorManager$Listener;->onIndicatorUpdated()V

    :cond_0
    return-void
.end method
