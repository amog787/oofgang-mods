.class public Landroidx/animation/AccelerateDecelerateInterpolator;
.super Ljava/lang/Object;
.source "AccelerateDecelerateInterpolator.java"

# interfaces
.implements Landroidx/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    double-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0
.end method
