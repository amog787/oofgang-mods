.class Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private alpha:F

.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private elevation:F

.field private mPathRotate:F

.field private mProgress:F

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    .line 45
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    .line 46
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    .line 49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private diff(FF)Z
    .locals 2

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    .line 80
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 78
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;I)V"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet;

    const/4 v3, -0x1

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_5
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_6
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_8
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_9
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_b
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    :cond_0
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "CUSTOM"

    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MotionPaths"

    if-eqz v3, :cond_f

    const-string v3, ","

    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 293
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 294
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 295
    instance-of v5, v2, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    if-eqz v5, :cond_d

    .line 296
    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    goto/16 :goto_0

    .line 288
    :pswitch_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    :goto_2
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 285
    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    :goto_3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 282
    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    :goto_4
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 279
    :pswitch_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    :goto_5
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 276
    :pswitch_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    :goto_6
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 273
    :pswitch_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7

    :cond_6
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    :goto_7
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 270
    :pswitch_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    :goto_8
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 267
    :pswitch_7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    :goto_9
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 264
    :pswitch_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_a

    :cond_9
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    :goto_a
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 261
    :pswitch_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    :goto_b
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 258
    :pswitch_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    :goto_c
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 255
    :pswitch_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    :goto_d
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 298
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " splineSet not a CustomSet frame = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN customName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN spline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public applyParameters(Landroid/view/View;)V
    .locals 3

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    if-lt v0, v1, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    :cond_2
    return-void
.end method

.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 5

    .line 217
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    .line 218
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    .line 221
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 222
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    .line 223
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    .line 224
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    .line 225
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 226
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    .line 227
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    .line 228
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 229
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 230
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    .line 231
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    .line 232
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    .line 234
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    .line 235
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    .line 236
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 237
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    .line 238
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 241
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_1

    .line 242
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I
    .locals 0

    .line 191
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I

    move-result p0

    return p0
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    const-string v1, "alpha"

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "elevation"

    .line 94
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v0, v2, :cond_3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 100
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "rotation"

    .line 103
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "transitionPathRotate"

    .line 106
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "progress"

    .line 109
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "rotationX"

    .line 112
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "rotationY"

    .line 115
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "scaleX"

    .line 118
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "scaleY"

    .line 121
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "translationX"

    .line 124
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "translationY"

    .line 127
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "translationZ"

    .line 130
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method setBounds(FFFF)V
    .locals 0

    return-void
.end method

.method public setState(Landroid/view/View;)V
    .locals 4

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    .line 317
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    return-void
.end method

.method public setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 3

    .line 321
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    .line 322
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    return-void
.end method
