.class public final Lcom/oneplus/android/server/display/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/tsu$you;
    }
.end annotation


# static fields
.field public static bio:I = 0x0

.field private static final bud:[F

.field public static final bvj:I = 0xc

.field private static final cgv:[F

.field private static cjf:Z = false

.field public static final dma:I = 0x15d

.field private static final ear:[F

.field private static fto:[F = null

.field public static final gck:I = 0x15e

.field private static gwm:F = 0.0f

.field private static hmo:[F = null

.field private static ibl:I = 0x0

.field private static final igw:Lcom/oneplus/android/server/display/tsu$you;

.field private static ire:[F = null

.field private static final kth:Ljava/lang/String; = "OpColorTintManager"

.field public static final lqr:[F

.field private static final obl:I = -0x1

.field public static final oif:I = 0x12c

.field private static final oxb:Z

.field public static final qbh:I = 0xc8

.field private static final ugm:I = 0x2e

.field private static final vdb:I = 0xf

.field public static final veq:[F

.field private static final vju:[F

.field private static final wtn:J = 0xbb8L

.field public static final ywr:I = 0x96

.field private static final zgw:I = 0x3e


# instance fields
.field private cno:Z

.field private rtg:Z

.field private sis:Lcom/oneplus/android/server/display/OpColorModeManager;

.field private ssp:Z

.field private tsu:Z

.field private final you:Landroid/content/Context;

.field private final zta:Lcom/oneplus/android/server/display/rtg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oneplus/android/server/display/tsu$you;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/display/tsu$you;-><init>(Lcom/oneplus/android/server/display/tsu$zta;)V

    sput-object v0, Lcom/oneplus/android/server/display/tsu;->igw:Lcom/oneplus/android/server/display/tsu$you;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x125

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/display/tsu;->oxb:Z

    sput-boolean v2, Lcom/oneplus/android/server/display/tsu;->cjf:Z

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->ear:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->fto:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->lqr:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->veq:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->cgv:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->vju:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/oneplus/android/server/display/tsu;->bud:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f04e3bd    # 0.5191f
        0x3e531f0a
        0x3e390d02
        0x0
        0x3ec353f8    # 0.3815f
        0x3f242bae
        0x3ea11b46
        0x0
        0x3dcb923a    # 0.0994f
        0x3dbf8f7d
        0x3ea8aa69
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e4fe7e1
        0x3e3d5b88
        0x0
        0x3f371759    # 0.7152f
        0x3f2eda23
        0x3f1f40b3
        0x0
        0x3d93dd98    # 0.0722f
        0x3d8d362e
        0x3d809d0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f6b851f    # 0.92f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->tsu:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->rtg:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->ssp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->cno:Z

    iput-object p1, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    sput p2, Lcom/oneplus/android/server/display/tsu;->bio:I

    new-instance p2, Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-direct {p2, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    new-instance p2, Lcom/oneplus/android/server/display/rtg;

    invoke-direct {p2, p1}, Lcom/oneplus/android/server/display/rtg;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111011e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->cno:Z

    return-void
.end method

.method private bvj()F
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v1, "oem_nightmode_brightness_progress"

    const/16 v2, 0xf

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p0, v0

    const v0, 0x3f666666    # 0.9f

    add-float/2addr p0, v0

    return p0
.end method

.method private cgv(Z)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v1, "temp_disable_inversion"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private gwm()Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/display/tsu;->oxb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v2, "screen_color_mode_settings_value"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private ibl()I
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/display/tsu;->oxb:Z

    const/16 v1, 0x2e

    const-string v2, "oem_nightmode_progress_status"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->cno:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3efae148    # 0.49f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x49

    return p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v3, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v3, 0x2d

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-le v0, v3, :cond_1

    sget v0, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f1c28f6    # 0.61f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x43

    goto :goto_0

    :cond_1
    sget v0, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x3c

    :goto_0
    return p0
.end method

.method private rtg([F[FZIZJ)V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "start applyTint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/sis;->zta()V

    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p3, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p4, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p5, :cond_0

    sput-object p2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    sget-object v0, Lcom/oneplus/android/server/display/tsu;->igw:Lcom/oneplus/android/server/display/tsu$you;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/oneplus/android/server/display/sis;->qbh(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/sis;->ssp()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/sis;->ssp()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/sis;->ssp()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/zta;

    invoke-direct {p3, v3, p4, p5}, Lcom/oneplus/android/server/display/zta;-><init>(Lcom/android/server/display/color/DisplayTransformManager;IZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/sis;->ssp()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/tsu$zta;

    move-object v1, p3

    move-object v2, p0

    move v4, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/tsu$zta;-><init>(Lcom/oneplus/android/server/display/tsu;Lcom/android/server/display/color/DisplayTransformManager;I[FZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/sis;->ssp()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private sis()V
    .locals 9

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ibl()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->bvj()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->gwm:F

    sget v1, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-static {v1, v0}, Lcom/oneplus/android/server/display/ssp;->you(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->bio(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->sis(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    const-wide/16 v7, 0xbb8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    :cond_0
    return-void
.end method

.method private ssp()F
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v2, "night_display_activated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v4, "fod_mode"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const-string v1, "OpColorTintManager"

    if-ne v3, v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, 0x64

    sget v2, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v3, "oem_screen_saturation_value"

    invoke-static {p0, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saturation slider cursor is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v2, p0, v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "targetColorSaturation is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic vdb(Lcom/android/server/display/color/DisplayTransformManager;IZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p2, :cond_0

    sput-object p3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    :cond_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/tsu;)Lcom/oneplus/android/server/display/rtg;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    return-object p0
.end method

.method static synthetic zta([F)[F
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/display/tsu;->ire:[F

    return-object p0
.end method


# virtual methods
.method public bio()V
    .locals 9

    const-string v0, "OpColorTintManager"

    const-string v1, "changeNight2ColorRead"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ibl()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->bvj()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->gwm:F

    sget v1, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-static {v1, v0}, Lcom/oneplus/android/server/display/ssp;->you(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->lqr:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    const-wide/16 v7, 0xbb8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public cjf()V
    .locals 8

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ear:[F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public cno()V
    .locals 10

    const-string v0, "OpColorTintManager"

    const-string v1, "changeColorRead2Night"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ibl()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->bvj()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->gwm:F

    sget v1, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-static {v1, v0}, Lcom/oneplus/android/server/display/ssp;->you(IF)[F

    move-result-object v4

    sput-object v4, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public dma(Z)V
    .locals 10

    const-string v0, "OpColorTintManager"

    const-string v1, "colorReadModeSwitch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v4, Lcom/oneplus/android/server/display/tsu;->lqr:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->gwm()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oneplus/android/server/display/tsu;->fto:[F

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/android/server/display/tsu;->ear:[F

    :goto_0
    move-object v2, p1

    sget-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    :goto_1
    return-void
.end method

.method public ear()V
    .locals 8

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public fto(Z)V
    .locals 0

    sput-boolean p1, Lcom/oneplus/android/server/display/tsu;->cjf:Z

    return-void
.end method

.method public gck()V
    .locals 10

    const-string v0, "OpColorTintManager"

    const-string v1, "changeReading2Night"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ibl()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->bvj()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->gwm:F

    sget v1, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-static {v1, v0}, Lcom/oneplus/android/server/display/ssp;->you(IF)[F

    move-result-object v4

    sput-object v4, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public hmo()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v2, "oem_screen_better_value"

    const/16 v3, 0x3e

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorTempearture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpColorTintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/oneplus/android/server/display/ssp;->zta(I)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/tsu;->fto:[F

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->bio(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->sis(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->kth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v5, Lcom/oneplus/android/server/display/tsu;->fto:[F

    const/4 v6, 0x0

    const/16 v7, 0x15e

    const/4 v8, 0x1

    const-wide/16 v9, 0xbb8

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "oneplus scene mode on, do not set CustomColorTemperature"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public igw()V
    .locals 9

    const-string v0, "OpColorTintManager"

    const-string v1, "changeNight2Reading"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ibl()I

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->bvj()F

    move-result v0

    sput v0, Lcom/oneplus/android/server/display/tsu;->gwm:F

    sget v1, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-static {v1, v0}, Lcom/oneplus/android/server/display/ssp;->you(IF)[F

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->veq:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    const-wide/16 v7, 0xbb8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public ire(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x12c

    const-string v2, "temp_disable_inversion"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/sis;->zta()V

    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/display/tsu;->vju:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget p1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-static {p0, v2, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget p1, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sput-boolean v1, Lcom/oneplus/android/server/display/tsu;->cjf:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public kth()V
    .locals 10

    const-string v0, "OpColorTintManager"

    const-string v1, "changeColorRead2Read"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v4, Lcom/oneplus/android/server/display/tsu;->veq:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public lqr()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->sis()V

    return-void
.end method

.method public obl(Z)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readingModeSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorTintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v4, Lcom/oneplus/android/server/display/tsu;->veq:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->gwm()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oneplus/android/server/display/tsu;->fto:[F

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/android/server/display/tsu;->ear:[F

    :goto_0
    move-object v2, p1

    sget-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    :goto_1
    return-void
.end method

.method public oif()V
    .locals 2

    const-string v0, "OpColorTintManager"

    const-string v1, "exitGoogleMatrixMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->ear()V

    return-void
.end method

.method public oxb()V
    .locals 1

    const-string p0, "OpColorTintManager"

    const-string v0, "recoverColorSaturation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorSaturation(F)V

    :cond_0
    return-void
.end method

.method public qbh()V
    .locals 6

    const-string v0, "OpColorTintManager"

    const-string v1, "enterGoogleMatrixMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/sis;->zta()V

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ear:[F

    const/16 v3, 0x15e

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ear:[F

    sput-object v2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    iget-boolean v2, p0, Lcom/oneplus/android/server/display/tsu;->ssp:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "mTempDisableGrayscale is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v4, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v2, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->ssp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x96

    sget-object v4, Lcom/oneplus/android/server/display/tsu;->cgv:[F

    invoke-virtual {v1, v2, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const-string v4, "GoogleMatrixMode"

    invoke-static {v4, v2, v3}, Lcom/oneplus/server/you;->rtg(Ljava/lang/String;II)V

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->ssp:Z

    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/android/server/display/tsu;->tsu:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v4, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v5, "accessibility_display_inversion_enabled"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    :cond_2
    sget-boolean v2, Lcom/oneplus/android/server/display/tsu;->cjf:Z

    if-nez v2, :cond_3

    const-string v2, "mTempDisableInversion is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/display/tsu;->cgv(Z)V

    const/16 v2, 0x12c

    sget-object v4, Lcom/oneplus/android/server/display/tsu;->vju:[F

    invoke-virtual {v1, v2, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->tsu:Z

    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/android/server/display/tsu;->rtg:Z

    if-eqz v2, :cond_5

    const-string v2, "mTempDisableDaltonizer is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xc

    sget v4, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v5, "accessibility_display_daltonizer"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    if-nez v0, :cond_4

    const/16 v0, 0xc8

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->cgv:[F

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->rtg:Z

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->gwm()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/oneplus/android/server/display/tsu;->fto:[F

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/oneplus/android/server/display/tsu;->ear:[F

    :goto_1
    sput-object p0, Lcom/oneplus/android/server/display/tsu;->ire:[F

    return-void
.end method

.method public tsu()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ssp()F

    move-result p0

    const-string v0, "OpColorTintManager"

    const-string v1, "applyColorSaturation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorSaturation(F)V

    :cond_0
    return-void
.end method

.method public ugm()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->hmo()V

    return-void
.end method

.method public veq()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->sis()V

    return-void
.end method

.method public vju(I)V
    .locals 0

    sput p1, Lcom/oneplus/android/server/display/tsu;->bio:I

    return-void
.end method

.method public wtn()V
    .locals 10

    const-string v0, "OpColorTintManager"

    const-string v1, "changeRead2ColorRead"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v4, Lcom/oneplus/android/server/display/tsu;->lqr:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    const-wide/16 v8, 0xbb8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    return-void
.end method

.method public ywr()V
    .locals 6

    const-string v0, "OpColorTintManager"

    const-string v1, "disableColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu;->zta:Lcom/oneplus/android/server/display/rtg;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/sis;->zta()V

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ear:[F

    const/16 v3, 0x15e

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->ear:[F

    sput-object v2, Lcom/oneplus/android/server/display/tsu;->ire:[F

    iget-object v2, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v3, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->ssp(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const-string v2, "Enter Fingerprint, Grayscale is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iput-boolean v4, p0, Lcom/oneplus/android/server/display/tsu;->ssp:Z

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->cno(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Enter Fingerprint, Inversion is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/tsu;->cgv(Z)V

    const/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iput-boolean v4, p0, Lcom/oneplus/android/server/display/tsu;->tsu:Z

    :cond_1
    iget-object v2, p0, Lcom/oneplus/android/server/display/tsu;->sis:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, Lcom/oneplus/android/server/display/tsu;->bio:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->rtg(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Enter Fingerprint, Daltonizer is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    const/16 v0, 0xc8

    invoke-virtual {v1, v0, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iput-boolean v4, p0, Lcom/oneplus/android/server/display/tsu;->rtg:Z

    :cond_2
    return-void
.end method

.method public zgw(Z)V
    .locals 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nightModeSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpColorTintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->ibl()I

    move-result v1

    sput v1, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->bvj()F

    move-result v1

    sput v1, Lcom/oneplus/android/server/display/tsu;->gwm:F

    sget v2, Lcom/oneplus/android/server/display/tsu;->ibl:I

    invoke-static {v2, v1}, Lcom/oneplus/android/server/display/ssp;->you(IF)[F

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/android/server/display/tsu;->you:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v3, Lcom/oneplus/android/server/display/tsu;->bio:I

    const-string v5, "oneplus_dc_dimming_value"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v3

    :cond_0
    const/16 v2, 0x23

    if-eqz p1, :cond_2

    if-eqz v4, :cond_1

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    sget-object v2, Lcom/oneplus/android/server/display/tsu;->hmo:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->tsu()V

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu;->gwm()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/android/server/display/tsu;->fto:[F

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/oneplus/android/server/display/tsu;->ear:[F

    :goto_1
    move-object v3, v0

    if-eqz v4, :cond_4

    if-ge v1, v2, :cond_4

    sget-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    const-wide/16 v8, 0x3e8

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/oneplus/android/server/display/tsu;->ire:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    const-wide/16 v8, 0xbb8

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V

    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->oxb()V

    :goto_3
    return-void
.end method
