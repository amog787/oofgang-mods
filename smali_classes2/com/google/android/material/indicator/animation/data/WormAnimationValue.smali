.class public Lcom/google/android/material/indicator/animation/data/WormAnimationValue;
.super Ljava/lang/Object;
.source "WormAnimationValue.java"

# interfaces
.implements Lcom/google/android/material/indicator/animation/data/Value;


# instance fields
.field private rectEnd:I

.field private rectStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRectEnd()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->rectEnd:I

    return p0
.end method

.method public getRectStart()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->rectStart:I

    return p0
.end method

.method public setRectEnd(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->rectEnd:I

    return-void
.end method

.method public setRectStart(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->rectStart:I

    return-void
.end method
