.class public Lcom/android/server/wm/cjf/zta;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/cjf/zta$zta;
    }
.end annotation


# static fields
.field private static final bvj:F = 0.3f

.field private static final gwm:J = 0x32L

.field private static final ibl:J = 0x96L

.field public static final oif:J = 0x12cL

.field private static final qbh:F = 0.6f

.field private static final ugm:Landroid/view/animation/Interpolator;

.field private static final vdb:Landroid/view/animation/Interpolator;

.field private static final ywr:Ljava/lang/String; = "OpAppLaunchAnimation"

.field private static final zgw:Landroid/view/animation/Interpolator;


# instance fields
.field private bio:Lcom/android/server/wm/cjf/zta$zta;

.field private cno:Lcom/android/server/wm/cjf/zta$zta;

.field private dma:F

.field private gck:F

.field private igw:Lcom/android/server/wm/cjf/zta$zta;

.field private kth:Lcom/android/server/wm/cjf/zta$zta;

.field private rtg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/cjf/zta$zta;",
            ">;"
        }
    .end annotation
.end field

.field private sis:F

.field private ssp:Lcom/android/server/wm/cjf/zta$zta;

.field private tsu:Landroid/graphics/RectF;

.field private wtn:F

.field private final you:Landroid/graphics/Rect;

.field private final zta:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/wm/cjf/zta;->ugm:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/cjf/zta;->vdb:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const v5, 0x3d4ccccd    # 0.05f

    const/4 v6, 0x0

    const v7, 0x3e088872

    const v8, 0x3da3d70a    # 0.08f

    const v9, 0x3e2aaa7e

    const v10, 0x3e4ccccd    # 0.2f

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v5, 0x3e666666    # 0.225f

    const v6, 0x3ee147ae    # 0.44f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/server/wm/cjf/zta;->zgw:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cjf/zta;->tsu:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-direct {p0, p3}, Lcom/android/server/wm/cjf/zta;->zta(F)V

    return-void
.end method

.method private sis()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->kth:Lcom/android/server/wm/cjf/zta$zta;

    iget v1, v1, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/cjf/zta;->kth:Lcom/android/server/wm/cjf/zta$zta;

    iget v2, v2, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/cjf/zta;->igw:Lcom/android/server/wm/cjf/zta$zta;

    iget v2, v2, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v2, v2

    div-float v4, v0, v2

    int-to-float v3, v3

    div-float v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/cjf/zta;->wtn:F

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->tsu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->tsu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->ssp:Lcom/android/server/wm/cjf/zta$zta;

    iget v1, v1, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    iget-object v4, p0, Lcom/android/server/wm/cjf/zta;->cno:Lcom/android/server/wm/cjf/zta$zta;

    iget v4, v4, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->tsu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->kth:Lcom/android/server/wm/cjf/zta$zta;

    iget v1, v1, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/cjf/zta;->tsu(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->tsu:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/cjf/zta;->gck:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/wm/cjf/zta;->dma:F

    return-void
.end method

.method private tsu(Landroid/graphics/RectF;F)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v1, p0

    neg-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method

.method private you(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/cjf/zta$zta;

    long-to-float v2, p1

    iget v3, v1, Lcom/android/server/wm/cjf/zta$zta;->tsu:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v1, Lcom/android/server/wm/cjf/zta$zta;->rtg:F

    cmpl-float v3, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    div-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v5

    :goto_1
    iget-object v3, v1, Lcom/android/server/wm/cjf/zta$zta;->ssp:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v3, v1, Lcom/android/server/wm/cjf/zta$zta;->sis:F

    mul-float/2addr v3, v2

    iget v4, v1, Lcom/android/server/wm/cjf/zta$zta;->you:F

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/cjf/zta;->sis()V

    return-void
.end method

.method private zta(F)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v2

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float v8, v1, v0

    new-instance v9, Lcom/android/server/wm/cjf/zta$zta;

    const/high16 v0, 0x43960000    # 300.0f

    mul-float v10, p1, v0

    sget-object v6, Lcom/android/server/wm/cjf/zta;->vdb:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/cjf/zta$zta;-><init>(Lcom/android/server/wm/cjf/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v9, p0, Lcom/android/server/wm/cjf/zta;->ssp:Lcom/android/server/wm/cjf/zta$zta;

    new-instance v9, Lcom/android/server/wm/cjf/zta$zta;

    const/high16 v0, 0x43160000    # 150.0f

    mul-float v5, p1, v0

    sget-object v6, Lcom/android/server/wm/cjf/zta;->vdb:Landroid/view/animation/Interpolator;

    move-object v0, v9

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/cjf/zta$zta;-><init>(Lcom/android/server/wm/cjf/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v9, p0, Lcom/android/server/wm/cjf/zta;->cno:Lcom/android/server/wm/cjf/zta$zta;

    new-instance v8, Lcom/android/server/wm/cjf/zta$zta;

    sget-object v6, Lcom/android/server/wm/cjf/zta;->zgw:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v8

    move v3, v7

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/cjf/zta$zta;-><init>(Lcom/android/server/wm/cjf/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, p0, Lcom/android/server/wm/cjf/zta;->kth:Lcom/android/server/wm/cjf/zta$zta;

    new-instance v7, Lcom/android/server/wm/cjf/zta$zta;

    const/high16 v0, 0x42480000    # 50.0f

    mul-float v5, p1, v0

    sget-object v6, Lcom/android/server/wm/cjf/zta;->ugm:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/cjf/zta$zta;-><init>(Lcom/android/server/wm/cjf/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/server/wm/cjf/zta;->bio:Lcom/android/server/wm/cjf/zta$zta;

    new-instance v7, Lcom/android/server/wm/cjf/zta$zta;

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->you:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float v5, p1, v0

    sget-object v6, Lcom/android/server/wm/cjf/zta;->vdb:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/cjf/zta$zta;-><init>(Lcom/android/server/wm/cjf/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/server/wm/cjf/zta;->igw:Lcom/android/server/wm/cjf/zta$zta;

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->ssp:Lcom/android/server/wm/cjf/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->cno:Lcom/android/server/wm/cjf/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->kth:Lcom/android/server/wm/cjf/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->bio:Lcom/android/server/wm/cjf/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/cjf/zta;->rtg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/cjf/zta;->igw:Lcom/android/server/wm/cjf/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/cjf/zta;->wtn:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/cjf/zta;->gck:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/cjf/zta;->dma:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/server/wm/cjf/zta;->bio:Lcom/android/server/wm/cjf/zta$zta;

    iget p1, p1, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyTransformation(): mScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/cjf/zta;->wtn:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mTransX0="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/cjf/zta;->gck:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mTransY0="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/cjf/zta;->dma:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mAlpha="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/cjf/zta;->bio:Lcom/android/server/wm/cjf/zta$zta;

    iget p2, p2, Lcom/android/server/wm/cjf/zta$zta;->zta:F

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mNormalizedTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/cjf/zta;->sis:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mFromRectDelta="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/cjf/zta;->zta:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAppLaunchAnimation"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    sub-long v4, p1, v4

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    move v4, v2

    :goto_1
    iput v4, p0, Lcom/android/server/wm/cjf/zta;->sis:F

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/cjf/zta;->you(J)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p0

    return p0
.end method
