.class public Lcom/google/android/material/indicator/animation/controller/ValueController;
.super Ljava/lang/Object;
.source "ValueController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;
    }
.end annotation


# instance fields
.field private updateListener:Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;

.field private wormAnimation:Lcom/google/android/material/indicator/animation/type/WormAnimation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/material/indicator/animation/controller/ValueController;->updateListener:Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;

    return-void
.end method


# virtual methods
.method public worm()Lcom/google/android/material/indicator/animation/type/WormAnimation;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/android/material/indicator/animation/controller/ValueController;->wormAnimation:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/google/android/material/indicator/animation/type/WormAnimation;

    iget-object v1, p0, Lcom/google/android/material/indicator/animation/controller/ValueController;->updateListener:Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/google/android/material/indicator/animation/type/WormAnimation;-><init>(Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/animation/controller/ValueController;->wormAnimation:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/indicator/animation/controller/ValueController;->wormAnimation:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    return-object p0
.end method
