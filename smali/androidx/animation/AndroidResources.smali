.class Landroidx/animation/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# static fields
.field static final STYLEABLE_ACCELERATE_INTERPOLATOR:[I

.field static final STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR:[I

.field static final STYLEABLE_CYCLE_INTERPOLATOR:[I

.field static final STYLEABLE_DECELERATE_INTERPOLATOR:[I

.field static final STYLEABLE_OVERSHOOT_INTERPOLATOR:[I

.field public static final STYLEABLE_PATH_INTERPOLATOR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/animation/AndroidResources;->STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10101d3

    aput v3, v1, v2

    .line 30
    sput-object v1, Landroidx/animation/AndroidResources;->STYLEABLE_ACCELERATE_INTERPOLATOR:[I

    new-array v1, v0, [I

    aput v3, v1, v2

    .line 35
    sput-object v1, Landroidx/animation/AndroidResources;->STYLEABLE_DECELERATE_INTERPOLATOR:[I

    new-array v1, v0, [I

    const v3, 0x10101d4

    aput v3, v1, v2

    .line 40
    sput-object v1, Landroidx/animation/AndroidResources;->STYLEABLE_CYCLE_INTERPOLATOR:[I

    new-array v0, v0, [I

    const v1, 0x101026a

    aput v1, v0, v2

    .line 45
    sput-object v0, Landroidx/animation/AndroidResources;->STYLEABLE_OVERSHOOT_INTERPOLATOR:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 93
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    return-void

    :array_0
    .array-data 4
        0x101026a
        0x101026b
    .end array-data

    :array_1
    .array-data 4
        0x10103fc
        0x10103fd
        0x10103fe
        0x10103ff
        0x1010405
    .end array-data
.end method
