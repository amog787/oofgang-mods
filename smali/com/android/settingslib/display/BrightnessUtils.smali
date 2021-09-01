.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field public static final GAMMA_SPACE_MAX:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xeb

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 30
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    const/16 v1, 0x13e

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7ff

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ff

    :goto_0
    sput v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    return-void
.end method

.method public static final convertGammaToLinearFloat(IFF)F
    .locals 9

    .line 84
    sget v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    const/4 v1, 0x0

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    int-to-float v0, v0

    int-to-float p0, p0

    .line 85
    invoke-static {v1, v0, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    .line 86
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    :cond_0
    const/16 v2, 0x7ff

    const/high16 v3, 0x41400000    # 12.0f

    const v4, 0x3e91c020

    const v5, 0x3e371ff0

    const v6, 0x3f0f564f

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v0, v2, :cond_3

    const/16 v2, 0x400

    if-gt p0, v2, :cond_1

    const v0, 0x44932000    # 1177.0f

    int-to-float p0, p0

    .line 93
    invoke-static {v1, v0, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    goto :goto_0

    :cond_1
    sub-int/2addr p0, v2

    int-to-float p0, p0

    int-to-float v2, v0

    const v8, 0x44dea000    # 1781.0f

    sub-float/2addr v2, v8

    mul-float/2addr p0, v2

    add-int/lit16 v2, v0, -0x400

    int-to-float v2, v2

    div-float/2addr p0, v2

    add-float/2addr p0, v8

    int-to-float v0, v0

    .line 97
    invoke-static {v1, v0, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    :goto_0
    cmpg-float v0, p0, v7

    if-gtz v0, :cond_2

    div-float/2addr p0, v7

    .line 103
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_1

    :cond_2
    sub-float/2addr p0, v6

    div-float/2addr p0, v5

    .line 105
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    add-float/2addr p0, v4

    :goto_1
    div-float/2addr p0, v3

    .line 110
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    :cond_3
    const/16 v2, 0x200

    if-gt p0, v2, :cond_4

    const v0, 0x44138000    # 590.0f

    int-to-float p0, p0

    .line 116
    invoke-static {v1, v0, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    goto :goto_2

    :cond_4
    sub-int/2addr p0, v2

    add-int/lit16 v2, v0, -0x37a

    mul-int/2addr p0, v2

    add-int/lit16 v2, v0, -0x200

    .line 118
    div-int/2addr p0, v2

    add-int/lit16 p0, p0, 0x37a

    int-to-float v0, v0

    int-to-float p0, p0

    .line 119
    invoke-static {v1, v0, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    :goto_2
    cmpg-float v0, p0, v7

    if-gtz v0, :cond_5

    div-float/2addr p0, v7

    .line 124
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_3

    :cond_5
    sub-float/2addr p0, v6

    div-float/2addr p0, v5

    .line 126
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    add-float/2addr p0, v4

    :goto_3
    div-float/2addr p0, v3

    .line 131
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static final convertLinearToGammaFloat(FFF)I
    .locals 9

    .line 173
    sget v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    const/4 v1, 0x0

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    .line 175
    sget p1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float p1, p1

    invoke-static {v1, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    const/16 v2, 0x7ff

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f0f564f

    const v5, 0x3e91c020

    const v6, 0x3e371ff0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41400000    # 12.0f

    if-ne v0, v2, :cond_3

    .line 177
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    mul-float/2addr p0, v8

    cmpg-float p1, p0, v7

    if-gtz p1, :cond_1

    .line 180
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    mul-float/2addr p0, v3

    goto :goto_0

    :cond_1
    sub-float/2addr p0, v5

    .line 182
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p0, v6

    add-float/2addr p0, v4

    .line 186
    :goto_0
    sget p1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float p1, p1

    invoke-static {v1, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 188
    sget p2, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float v0, p2

    const v1, 0x44dea000    # 1781.0f

    div-float v0, v1, v0

    cmpg-float p0, p0, v0

    const/high16 v0, 0x44800000    # 1024.0f

    if-gtz p0, :cond_2

    int-to-float p0, p1

    mul-float/2addr p0, v0

    div-float/2addr p0, v1

    .line 190
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, -0x6f5

    int-to-float p0, p1

    int-to-float p1, p2

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    add-int/lit16 p2, p2, -0x6f5

    int-to-float p1, p2

    div-float/2addr p0, p1

    add-float/2addr p0, v0

    .line 192
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_1
    return p0

    .line 198
    :cond_3
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    mul-float/2addr p0, v8

    cmpg-float p1, p0, v7

    if-gtz p1, :cond_4

    .line 201
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    mul-float/2addr p0, v3

    goto :goto_2

    :cond_4
    sub-float/2addr p0, v5

    .line 203
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p0, v6

    add-float/2addr p0, v4

    .line 206
    :goto_2
    sget p1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float p1, p1

    invoke-static {v1, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const p2, 0x445e8000    # 890.0f

    .line 208
    sget v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float v1, v0

    div-float/2addr p2, v1

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_5

    mul-int/lit16 p1, p1, 0x200

    .line 210
    div-int/lit16 p1, p1, 0x37a

    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_3

    :cond_5
    add-int/lit16 p1, p1, -0x37a

    add-int/lit16 p0, v0, -0x200

    mul-int/2addr p1, p0

    add-int/lit16 v0, v0, -0x37a

    .line 212
    div-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x200

    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_3
    return p0
.end method
