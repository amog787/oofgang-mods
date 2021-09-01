.class interface abstract Landroidx/animation/Keyframes;
.super Ljava/lang/Object;
.source "Keyframes.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/Keyframes$FloatKeyframes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract clone()Landroidx/animation/Keyframes;
.end method

.method public abstract getKeyframes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/animation/Keyframe<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getValue(F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract setEvaluator(Landroidx/animation/TypeEvaluator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/animation/TypeEvaluator<",
            "TT;>;)V"
        }
    .end annotation
.end method
