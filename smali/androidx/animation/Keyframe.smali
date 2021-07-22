.class public abstract Landroidx/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/Keyframe$FloatKeyframe;
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


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroidx/animation/Interpolator;

.field mValueWasSetOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Landroidx/animation/Keyframe;->mInterpolator:Landroidx/animation/Interpolator;

    return-void
.end method

.method public static ofFloat(F)Landroidx/animation/Keyframe$FloatKeyframe;
    .locals 1

    .line 139
    new-instance v0, Landroidx/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Landroidx/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofFloat(FF)Landroidx/animation/Keyframe$FloatKeyframe;
    .locals 1

    .line 122
    new-instance v0, Landroidx/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Landroidx/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Landroidx/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroidx/animation/Keyframe;->clone()Landroidx/animation/Keyframe;

    move-result-object p0

    return-object p0
.end method

.method public getFraction()F
    .locals 0

    .line 227
    iget p0, p0, Landroidx/animation/Keyframe;->mFraction:F

    return p0
.end method

.method public getInterpolator()Landroidx/animation/Interpolator;
    .locals 0

    .line 248
    iget-object p0, p0, Landroidx/animation/Keyframe;->mInterpolator:Landroidx/animation/Interpolator;

    return-object p0
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public hasValue()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Landroidx/animation/Keyframe;->mHasValue:Z

    return p0
.end method

.method public setInterpolator(Landroidx/animation/Interpolator;)V
    .locals 0

    .line 256
    iput-object p1, p0, Landroidx/animation/Keyframe;->mInterpolator:Landroidx/animation/Interpolator;

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method setValueWasSetOnStart(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Landroidx/animation/Keyframe;->mValueWasSetOnStart:Z

    return-void
.end method

.method valueWasSetOnStart()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Landroidx/animation/Keyframe;->mValueWasSetOnStart:Z

    return p0
.end method
