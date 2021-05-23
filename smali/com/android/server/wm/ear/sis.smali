.class public Lcom/android/server/wm/ear/sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ear/sis$tsu;
    }
.end annotation


# static fields
.field private static final cno:I = 0x3200000

.field private static final kth:Ljava/lang/Object;


# instance fields
.field private final rtg:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Lcom/android/server/wm/ear/sis$tsu;

.field private final ssp:Lcom/android/server/wm/ear/tsu;

.field private tsu:Lcom/android/server/wm/WindowManagerService;

.field private you:Ljava/util/concurrent/ExecutorService;

.field private zta:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/ear/sis;->kth:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ear/tsu;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ear/sis;->zta:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/ear/sis$zta;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x3200000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ear/sis$zta;-><init>(Lcom/android/server/wm/ear/sis;I)V

    iput-object v0, p0, Lcom/android/server/wm/ear/sis;->rtg:Landroid/util/LruCache;

    iput-object p2, p0, Lcom/android/server/wm/ear/sis;->ssp:Lcom/android/server/wm/ear/tsu;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ear/sis;->you:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/server/wm/ear/sis;->tsu:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private igw(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ear/sis;->oif(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ear/sis;->sis(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadSplashFromDisk finish, packageName =:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ear/sis;->sis:Lcom/android/server/wm/ear/sis$tsu;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/server/wm/ear/sis$tsu;->zta(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private oif(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ear/sis;->ssp:Lcom/android/server/wm/ear/tsu;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ear/tsu;->zta(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private wtn(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ear/sis;->sis(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSplashFromRes packageName =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/ear/sis;->sis:Lcom/android/server/wm/ear/sis$tsu;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/server/wm/ear/sis$tsu;->zta(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/ear/sis;->tsu:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadSplashFromRes init screen size spend time = :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v10, p3

    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadSplashFromRes load bitmap spend time = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v7, :cond_6

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    if-lt v12, v5, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ge v12, v4, :cond_3

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Color;->toArgb()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-int v14, v14

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int/2addr v15, v8

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Color;->toArgb()I

    move-result v14

    new-instance v15, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    int-to-float v13, v4

    const/4 v8, 0x3

    new-array v0, v8, [I

    aput v12, v0, v6

    const/4 v12, 0x1

    aput v14, v0, v12

    const/4 v12, 0x2

    aput v14, v0, v12

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v15

    move/from16 v19, v13

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v4

    int-to-float v12, v12

    mul-float/2addr v12, v8

    float-to-int v8, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v12, v6, v6, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v5, :cond_4

    iget v6, v12, Landroid/graphics/Rect;->top:I

    add-int v14, v5, v0

    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v0, v6, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    iget v6, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    add-int/2addr v14, v0

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v13, v0, v6, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v4, :cond_5

    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->right:I

    add-int v14, v4, v8

    invoke-virtual {v12, v0, v8, v6, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    add-int/2addr v14, v8

    invoke-virtual {v13, v0, v8, v6, v14}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    invoke-virtual {v10, v7, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSplashFromRes fix bitmap spend time =:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ear/sis;->sis(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSplashFromRes finish window.size =: ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "),drawablebitmap.size =: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "),sourceRect =:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",dstRect =:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/wm/ear/sis;->sis:Lcom/android/server/wm/ear/sis$tsu;

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Lcom/android/server/wm/ear/sis$tsu;->zta(Ljava/lang/String;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic you(Lcom/android/server/wm/ear/sis;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ear/sis;->igw(ILjava/lang/String;)V

    return-void
.end method

.method private ywr(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/ear/sis;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ear/sis;->wtn(Ljava/lang/String;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bio(ILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSnapshotFromDisk userId =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",packageName =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ear/sis;->oif(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bvj()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ear/sis;->sis:Lcom/android/server/wm/ear/sis$tsu;

    return-void
.end method

.method public cno(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ear/sis;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ear/sis;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dma(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ear/sis;->rtg:Landroid/util/LruCache;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ear/sis;->ywr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public gck(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ear/sis;->rtg()V

    iget-object v0, p0, Lcom/android/server/wm/ear/sis;->rtg:Landroid/util/LruCache;

    invoke-direct {p0, p1, p4}, Lcom/android/server/wm/ear/sis;->ywr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/ear/sis;->sis(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/ear/zta;->wtn:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p4, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p4, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ear/sis;->you:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/wm/ear/sis$you;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/android/server/wm/ear/sis$you;-><init>(Lcom/android/server/wm/ear/sis;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/ear/sis;->you:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lcom/android/server/wm/ear/sis$sis;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/server/wm/ear/sis$sis;-><init>(Lcom/android/server/wm/ear/sis;ILjava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public kth(ILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSnapshotForToken userId =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",packageName =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntoken =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",restoreFromDisk =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ear/sis;->rtg:Landroid/util/LruCache;

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/ear/sis;->ywr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_1
    if-nez p4, :cond_2

    return-object v1

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ear/sis;->bio(ILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public qbh(Lcom/android/server/wm/ear/sis$tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ear/sis;->sis:Lcom/android/server/wm/ear/sis$tsu;

    return-void
.end method

.method public rtg()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ear/sis;->sis:Lcom/android/server/wm/ear/sis$tsu;

    sget-object v0, Lcom/android/server/wm/ear/sis;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ear/sis;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sis(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/ear/sis;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ear/sis;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ssp(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ear/sis;->cno(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ear/sis;->rtg:Landroid/util/LruCache;

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/ear/sis;->ywr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPreloadedOrCachedSplash loaded splash in cache token =:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    return-object p2
.end method

.method public tsu()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ear/sis;->rtg:Landroid/util/LruCache;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method
