.class public Lcom/android/server/wm/OpScreenRotationImprovement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpScreenRotationImprovement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpScreenRotationImprovement$you;
    }
.end annotation


# static fields
.field private static final IGNORE_STATUSBAR_DIRECTION_DOWN:I = 0x4

.field private static final IGNORE_STATUSBAR_DIRECTION_LEFT:I = 0x1

.field private static final IGNORE_STATUSBAR_DIRECTION_RIGHT:I = 0x3

.field private static final IGNORE_STATUSBAR_DIRECTION_UP:I = 0x2

.field private static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field private static final SCREEN_FREEZE_LAYER_CUSTOM:I = 0x1eab93

.field private static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field private static final SCREEN_FREEZE_LAYER_EXIT:I = 0x1eab92

.field private static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field private static final TAG:Ljava/lang/String; = "OpScreenRotationImprovement"


# instance fields
.field private mBackColorSurface:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mForceDefaultOrientation:Z

.field private mHeight:I

.field private mOpSurfaceRotationAnimationController:Lcom/android/server/wm/OpScreenRotationImprovement$you;

.field private mOriginalDisplayRect:Landroid/graphics/Rect;

.field private mOriginalHeight:I

.field private mOriginalRotation:I

.field private mOriginalWidth:I

.field private mRotateEnterAnimation:Landroid/view/animation/Animation;

.field private mRotateExitAnimation:Landroid/view/animation/Animation;

.field private mScreenShotPopularColor:I

.field private mScreenshotLayer:Landroid/view/SurfaceControl;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mWidth:I

.field private mWindowingLayerPopularColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalDisplayRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenShotPopularColor:I

    iput v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWindowingLayerPopularColor:I

    iput-object p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/OpScreenRotationImprovement;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/OpScreenRotationImprovement;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/OpScreenRotationImprovement;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/OpScreenRotationImprovement;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenshotLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/OpScreenRotationImprovement;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mRotateExitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/OpScreenRotationImprovement;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/OpScreenRotationImprovement;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenShotPopularColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/OpScreenRotationImprovement;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWindowingLayerPopularColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/OpScreenRotationImprovement;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mBackColorSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private getMostPopularColorBoundary(Landroid/graphics/Bitmap;II)I
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, p2, 0x2

    sub-int v3, v0, v2

    sub-int v2, v1, v2

    const/4 v4, 0x0

    if-ltz v3, :cond_9

    if-gez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v3, :cond_3

    const/4 v8, 0x2

    if-eq p3, v8, :cond_1

    add-int v8, v6, p2

    add-int/lit8 v9, p2, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x4

    if-eq p3, v8, :cond_2

    add-int v8, v6, p2

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, p2

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_6

    if-eq p3, v7, :cond_4

    add-int/lit8 v3, p2, 0x0

    add-int v6, v1, p2

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v3, 0x3

    if-eq p3, v3, :cond_5

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, p2

    add-int v6, v1, p2

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/android/server/wm/OpScreenRotationImprovement$zta;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpScreenRotationImprovement$zta;-><init>(Lcom/android/server/wm/OpScreenRotationImprovement;)V

    invoke-static {v5, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v7

    move p2, p1

    move p3, p2

    :goto_2
    if-ge p1, p0, :cond_9

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/2addr p2, v7

    if-le p2, p3, :cond_8

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move v4, p3

    move p3, p2

    goto :goto_3

    :cond_7
    move p2, v7

    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return v4
.end method

.method private initializeAnimations(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;II)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move/from16 v8, p4

    move/from16 v9, p5

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v8, v9, :cond_2

    sub-int v10, v8, v9

    if-ne v1, v3, :cond_1

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v10

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    neg-int v5, v10

    move-object v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_5

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    neg-int v11, v10

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v11

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    move-object v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move v5, v11

    move v6, v10

    goto :goto_1

    :cond_2
    sub-int v10, v9, v8

    if-ne v1, v3, :cond_3

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    neg-int v11, v10

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v11

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    :goto_0
    move-object v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move v5, v10

    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    goto :goto_3

    :cond_3
    if-ne v1, v2, :cond_5

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v10

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    neg-int v6, v10

    goto :goto_0

    :cond_4
    :goto_2
    iget v1, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v2, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    move-object v3, p3

    invoke-virtual {p3, v8, v9, v1, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iget v0, v0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    move-object v2, p2

    invoke-virtual {p2, v8, v9, v1, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public calColorForSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalRotation:I

    invoke-static {p3, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p3

    if-eqz p3, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 p3, 0x3e800000    # 0.25f

    invoke-static {p2, p1, p3}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalRotation:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/16 p2, 0x28

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/OpScreenRotationImprovement;->getMostPopularColorBoundary(Landroid/graphics/Bitmap;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWindowingLayerPopularColor:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenShotPopularColor:I

    iput p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWindowingLayerPopularColor:I

    :cond_4
    :goto_2
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ScreenShot Popular Color="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenShotPopularColor:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Windowing Layer Popular Color="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWindowingLayerPopularColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpScreenRotationImprovement"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public init(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpScreenRotationImprovement"

    if-eqz v0, :cond_0

    const-string v0, "init OpScreenRotationImprovement"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p3, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iput-object p5, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mBackColorSurface:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p5

    const/4 p6, 0x1

    if-eqz p2, :cond_1

    iput-boolean p6, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mForceDefaultOrientation:Z

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_0

    :cond_1
    iget p2, p5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p5, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_0
    const/4 p5, 0x3

    if-eq p3, p6, :cond_3

    if-ne p3, p5, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWidth:I

    iput p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mHeight:I

    goto :goto_2

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mWidth:I

    iput p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mHeight:I

    :goto_2
    iput p3, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalRotation:I

    iput p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalWidth:I

    iput p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOriginalHeight:I

    new-instance p1, Lcom/android/server/wm/OpScreenRotationImprovement$you;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpScreenRotationImprovement$you;-><init>(Lcom/android/server/wm/OpScreenRotationImprovement;)V

    iput-object p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOpSurfaceRotationAnimationController:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p4}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p2

    invoke-virtual {p4}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string p4, "init(): taking screenshot to Bitmap failed:"

    invoke-static {v1, p4, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz p1, :cond_6

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    if-ne p3, p6, :cond_4

    move p6, p5

    goto :goto_4

    :cond_4
    if-ne p3, p5, :cond_5

    goto :goto_4

    :cond_5
    move p6, p4

    :goto_4
    const/16 p2, 0x28

    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/OpScreenRotationImprovement;->getMostPopularColorBoundary(Landroid/graphics/Bitmap;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenShotPopularColor:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOpSurfaceRotationAnimationController:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenRotationImprovement$you;->tsu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kill()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpScreenRotationImprovement"

    const-string v1, "kill OpScreenRotationImprovement"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOpSurfaceRotationAnimationController:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenRotationImprovement$you;->zta()V

    :cond_1
    return-void
.end method

.method public loadAnimation(IZII)Landroid/view/animation/Animation;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v1, 0x501003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v2, 0x501003c

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v1, 0x501003f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v2, 0x501003e

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v1, 0x5010041

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v2, 0x5010040

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v1, 0x10a008a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mContext:Landroid/content/Context;

    const v2, 0x10a0089

    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, v1

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/OpScreenRotationImprovement;->initializeAnimations(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;II)V

    if-eqz p2, :cond_4

    iput-object v1, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    return-object v1

    :cond_4
    iput-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mRotateExitAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public setInitColorForBackColorSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mScreenShotPopularColor:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public startScreenRotationAnimation()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpScreenRotationImprovement"

    const-string v1, "start screen rotation animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement;->mOpSurfaceRotationAnimationController:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenRotationImprovement$you;->igw()V

    return-void
.end method
