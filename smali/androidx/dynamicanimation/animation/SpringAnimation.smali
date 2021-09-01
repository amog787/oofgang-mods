.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 130
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private sanityCheck()V
    .locals 4

    .line 241
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    .line 246
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 249
    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 242
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 196
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 197
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v2, :cond_0

    .line 199
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 203
    :goto_0
    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_1
    return-void
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 139
    iget-object p0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method isAtEquilibrium(FF)Z
    .locals 0

    .line 305
    iget-object p0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result p0

    return p0
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 151
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public start()V
    .locals 3

    .line 158
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    .line 159
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    .line 160
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    .line 259
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    .line 260
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    .line 261
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 262
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 264
    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 265
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 266
    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return v2

    .line 270
    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    .line 273
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 274
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v7, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 275
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 277
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 278
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 279
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    goto :goto_0

    .line 282
    :cond_2
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 283
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 284
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 287
    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 288
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 290
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 292
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method
