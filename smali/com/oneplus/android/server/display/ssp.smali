.class public Lcom/oneplus/android/server/display/ssp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sis:F = 0.6f

.field private static final you:I = 0x1e

.field private static final zta:Ljava/lang/String; = "OpMatrixUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sis([F[F)[F
    .locals 14

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v0, v1, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aget v4, p0, v3

    const/4 v5, 0x4

    aget v6, p1, v5

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v6, p0, v4

    const/16 v7, 0x8

    aget v8, p1, v7

    mul-float/2addr v6, v8

    add-float/2addr v2, v6

    aput v2, v0, v1

    aget v2, p0, v1

    aget v6, p1, v3

    mul-float/2addr v2, v6

    aget v6, p0, v3

    const/4 v8, 0x5

    aget v9, p1, v8

    mul-float/2addr v6, v9

    add-float/2addr v2, v6

    aget v6, p0, v4

    const/16 v9, 0x9

    aget v10, p1, v9

    mul-float/2addr v6, v10

    add-float/2addr v2, v6

    aput v2, v0, v3

    aget v2, p0, v1

    aget v6, p1, v4

    mul-float/2addr v2, v6

    aget v6, p0, v3

    const/4 v10, 0x6

    aget v11, p1, v10

    mul-float/2addr v6, v11

    add-float/2addr v2, v6

    aget v6, p0, v4

    const/16 v11, 0xa

    aget v12, p1, v11

    mul-float/2addr v6, v12

    add-float/2addr v2, v6

    aput v2, v0, v4

    const/4 v2, 0x3

    const/4 v6, 0x0

    aput v6, v0, v2

    aget v2, p0, v5

    aget v12, p1, v1

    mul-float/2addr v2, v12

    aget v12, p0, v8

    aget v13, p1, v5

    mul-float/2addr v12, v13

    add-float/2addr v2, v12

    aget v12, p0, v10

    aget v13, p1, v7

    mul-float/2addr v12, v13

    add-float/2addr v2, v12

    aput v2, v0, v5

    aget v2, p0, v5

    aget v12, p1, v3

    mul-float/2addr v2, v12

    aget v12, p0, v8

    aget v13, p1, v8

    mul-float/2addr v12, v13

    add-float/2addr v2, v12

    aget v12, p0, v10

    aget v13, p1, v9

    mul-float/2addr v12, v13

    add-float/2addr v2, v12

    aput v2, v0, v8

    aget v2, p0, v5

    aget v12, p1, v4

    mul-float/2addr v2, v12

    aget v12, p0, v8

    aget v13, p1, v10

    mul-float/2addr v12, v13

    add-float/2addr v2, v12

    aget v12, p0, v10

    aget v13, p1, v11

    mul-float/2addr v12, v13

    add-float/2addr v2, v12

    aput v2, v0, v10

    const/4 v2, 0x7

    aput v6, v0, v2

    aget v2, p0, v7

    aget v1, p1, v1

    mul-float/2addr v2, v1

    aget v1, p0, v9

    aget v5, p1, v5

    mul-float/2addr v1, v5

    add-float/2addr v2, v1

    aget v1, p0, v11

    aget v5, p1, v7

    mul-float/2addr v1, v5

    add-float/2addr v2, v1

    aput v2, v0, v7

    aget v1, p0, v7

    aget v2, p1, v3

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v11

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    aget v1, p0, v7

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget p0, p0, v11

    aget p1, p1, v11

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    aput v1, v0, v11

    const/16 p0, 0xb

    aput v6, v0, p0

    const/16 p0, 0xc

    aput v6, v0, p0

    const/16 p0, 0xd

    aput v6, v0, p0

    const/16 p0, 0xe

    aput v6, v0, p0

    const/16 p0, 0xf

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v0, p0

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tsu(F)[F
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p0

    const v3, 0x3ea04189    # 0.313f

    mul-float/2addr v3, v2

    add-float v4, v3, p0

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v0, v3

    const v3, 0x3f0b851f    # 0.545f

    mul-float/2addr v3, v2

    const/4 v5, 0x4

    aput v3, v0, v5

    add-float v5, v3, p0

    const/4 v6, 0x5

    aput v5, v0, v6

    const/4 v5, 0x6

    aput v3, v0, v5

    const/4 v3, 0x7

    aput v4, v0, v3

    const v3, 0x3e116873    # 0.142f

    mul-float/2addr v2, v3

    const/16 v3, 0x8

    aput v2, v0, v3

    const/16 v3, 0x9

    aput v2, v0, v3

    add-float/2addr v2, p0

    const/16 p0, 0xa

    aput v2, v0, p0

    const/16 p0, 0xb

    aput v4, v0, p0

    const/16 p0, 0xc

    aput v4, v0, p0

    const/16 p0, 0xd

    aput v4, v0, p0

    const/16 p0, 0xe

    aput v4, v0, p0

    const/16 p0, 0xf

    aput v1, v0, p0

    return-object v0
.end method

.method public static you(IF)[F
    .locals 9

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const p1, 0x3f19999a    # 0.6f

    const-string v0, "OpMatrixUtils"

    const-string v1, "parameter error"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    const v3, -0x48583a54    # -2.0E-5f

    int-to-float v4, p0

    mul-float/2addr v3, v4

    mul-float/2addr v3, v4

    const v5, 0x3b83126f    # 0.004f

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-double v5, v3

    const-wide v7, 0x3fe722d0e5604189L    # 0.723

    add-double/2addr v5, v7

    double-to-float v3, v5

    mul-float/2addr v3, p1

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    const v3, -0x4804577e    # -3.0E-5f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x3f813404f8000000L    # 0.008400000398978591

    int-to-double v7, p0

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    const-wide v5, 0x3fdc154c985f06f7L    # 0.4388

    add-double/2addr v3, v5

    double-to-float p0, v3

    mul-float/2addr p0, p1

    aput p0, v0, v1

    const/16 p0, 0xb

    aput v2, v0, p0

    const/16 p0, 0xc

    aput v2, v0, p0

    const/16 p0, 0xd

    aput v2, v0, p0

    const/16 p0, 0xe

    aput v2, v0, p0

    const/16 p0, 0xf

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v0, p0

    return-object v0
.end method

.method public static zta(I)[F
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [F

    const v1, 0x3b1d4951    # 0.0023999999f

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x3c

    if-gt p0, v3, :cond_0

    const v3, -0x49f9c843    # -2.0E-6f

    int-to-float p0, p0

    mul-float/2addr v3, p0

    mul-float/2addr v3, p0

    const v4, 0x3a51b717    # 8.0E-4f

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    const v4, 0x3f7594af    # 0.9593f

    add-float/2addr v3, v4

    const v4, -0x4979c843    # -4.0E-6f

    mul-float/2addr v4, p0

    mul-float/2addr v4, p0

    mul-float/2addr p0, v1

    add-float/2addr v4, p0

    const p0, 0x3f5d70a4    # 0.865f

    add-float/2addr v4, p0

    move p0, v4

    move v4, v2

    goto :goto_0

    :cond_0
    const v3, 0x36eae18b    # 7.0E-6f

    int-to-float p0, p0

    mul-float/2addr v3, p0

    mul-float/2addr v3, p0

    const v4, 0x3b30f27b    # 0.0026999998f

    mul-float/2addr v4, p0

    sub-float v4, v3, v4

    const v5, 0x3f92617c    # 1.1436f

    add-float/2addr v4, v5

    mul-float/2addr p0, v1

    sub-float/2addr v3, p0

    const p0, 0x3f8fec57    # 1.1244f

    add-float/2addr v3, p0

    move p0, v2

    :goto_0
    const/4 v1, 0x0

    aput v4, v0, v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput v4, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput p0, v0, v1

    const/16 p0, 0xb

    aput v4, v0, p0

    const/16 p0, 0xc

    aput v4, v0, p0

    const/16 p0, 0xd

    aput v4, v0, p0

    const/16 p0, 0xe

    aput v4, v0, p0

    const/16 p0, 0xf

    aput v2, v0, p0

    return-object v0
.end method
