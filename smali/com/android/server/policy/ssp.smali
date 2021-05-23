.class public Lcom/android/server/policy/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ssp$sis;,
        Lcom/android/server/policy/ssp$you;
    }
.end annotation


# static fields
.field private static final cjf:I = 0x1f4

.field private static final obl:I = 0x5

.field private static final oxb:I = 0x3

.field private static final ugm:Ljava/lang/String; = "OpGestures"

.field private static final vdb:Z

.field private static final zgw:I = 0xc8


# instance fields
.field private bio:Z

.field private bvj:Z

.field private cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private dma:I

.field private gck:Landroid/graphics/Point;

.field gwm:I

.field ibl:I

.field private igw:I

.field private kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private oif:I

.field private qbh:Landroid/app/ActivityManager;

.field private rtg:Landroid/os/Handler;

.field private sis:I

.field private ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Landroid/content/Context;

.field private wtn:Landroid/graphics/Point;

.field private you:I

.field private ywr:I

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/ssp;->vdb:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ssp;->bio:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/ssp;->igw:I

    iput v1, p0, Lcom/android/server/policy/ssp;->dma:I

    iput v1, p0, Lcom/android/server/policy/ssp;->ywr:I

    iput v0, p0, Lcom/android/server/policy/ssp;->oif:I

    iput-boolean v0, p0, Lcom/android/server/policy/ssp;->bvj:Z

    iput v1, p0, Lcom/android/server/policy/ssp;->ibl:I

    iput v1, p0, Lcom/android/server/policy/ssp;->gwm:I

    iput-object p1, p0, Lcom/android/server/policy/ssp;->tsu:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/ssp;->rtg:Landroid/os/Handler;

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/ssp;->tsu:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/policy/ssp;->qbh:Landroid/app/ActivityManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/server/policy/ssp;->ibl:I

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/server/policy/ssp;->gwm:I

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/ssp;->dma:I

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/ssp;->ywr:I

    iget-object p1, p0, Lcom/android/server/policy/ssp;->tsu:Landroid/content/Context;

    new-instance p2, Lcom/android/server/policy/ssp$zta;

    invoke-direct {p2, p0}, Lcom/android/server/policy/ssp$zta;-><init>(Lcom/android/server/policy/ssp;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/ssp;->oif:I

    return-void
.end method

.method private bio(Landroid/view/MotionEvent;II)V
    .locals 4

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_4

    iget-object p1, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private cno()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/ssp;->tsu:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget p0, p0, Lcom/android/server/policy/ssp;->gwm:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/policy/ssp;->ibl:I

    return p0
.end method

.method private gck(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/policy/ssp$sis;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ssp$sis;-><init>(Lcom/android/server/policy/ssp;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-static {p1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    sget-boolean v3, Lcom/android/server/policy/ssp;->vdb:Z

    const-string v4, "pointers"

    const-string v5, "OpGestures"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " maxPCY.y"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " minPCY.y"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Lcom/android/server/policy/ssp$you;

    invoke-direct {v3, p0}, Lcom/android/server/policy/ssp$you;-><init>(Lcom/android/server/policy/ssp;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-static {p1, v3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    sget-boolean v7, Lcom/android/server/policy/ssp;->vdb:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " maxPCX.x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " minPCX.x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget p1, v2, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0}, Lcom/android/server/policy/ssp;->cno()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_3

    iget p1, v6, Landroid/graphics/Point;->x:I

    iget v0, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0}, Lcom/android/server/policy/ssp;->kth()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-ge p1, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private kth()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/ssp;->tsu:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget p0, p0, Lcom/android/server/policy/ssp;->ibl:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/policy/ssp;->gwm:I

    return p0
.end method

.method private rtg(II)I
    .locals 0

    if-le p1, p2, :cond_0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    sub-int p1, p2, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 p0, 0xb4

    if-le p1, p0, :cond_2

    rsub-int p1, p1, 0x168

    :cond_2
    return p1
.end method

.method private static sis(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ssp()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/ssp;->tsu(Ljava/util/ArrayList;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/policy/ssp;->tsu(Ljava/util/ArrayList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/policy/ssp;->tsu(Ljava/util/ArrayList;)I

    move-result v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/ssp;->rtg(II)I

    move-result v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/ssp;->rtg(II)I

    move-result v1

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/ssp;->rtg(II)I

    move-result p0

    if-le v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-le v3, p0, :cond_1

    move p0, v3

    :cond_1
    return p0
.end method

.method private tsu(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    if-ltz p0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    if-nez v1, :cond_2

    if-ltz p0, :cond_1

    const/16 p0, 0x5a

    return p0

    :cond_1
    const/16 p0, -0x5a

    return p0

    :cond_2
    int-to-double p0, p0

    int-to-double v2, v1

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    if-gez v1, :cond_3

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p0, v0

    :cond_3
    double-to-int p0, p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private wtn()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, -0x5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/ssp;->wtn:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/policy/ssp;->gck:Landroid/graphics/Point;

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/ssp;->ssp()I

    move-result v0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/ssp;->gck(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/ssp;->gck(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/ssp;->gck(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method static synthetic you(Lcom/android/server/policy/ssp;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/ssp;->oif:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/policy/ssp;)I
    .locals 0

    iget p0, p0, Lcom/android/server/policy/ssp;->oif:I

    return p0
.end method


# virtual methods
.method public igw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/ssp;->bio:Z

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8

    iget v0, p0, Lcom/android/server/policy/ssp;->oif:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/ssp;->bio:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    and-int/lit16 v4, v0, 0xff

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    :cond_2
    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/server/policy/ssp;->zta:Z

    iput v2, p0, Lcom/android/server/policy/ssp;->you:I

    iput v2, p0, Lcom/android/server/policy/ssp;->sis:I

    iget-object v4, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget v4, p0, Lcom/android/server/policy/ssp;->you:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/policy/ssp;->you:I

    if-ne v4, v1, :cond_6

    iget v4, p0, Lcom/android/server/policy/ssp;->igw:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/policy/ssp;->igw:I

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    move v4, v3

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/policy/ssp;->bvj:Z

    :cond_6
    iget v4, p0, Lcom/android/server/policy/ssp;->sis:I

    iget v5, p0, Lcom/android/server/policy/ssp;->you:I

    if-ge v4, v5, :cond_7

    iput v5, p0, Lcom/android/server/policy/ssp;->sis:I

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_8

    iget v6, p0, Lcom/android/server/policy/ssp;->sis:I

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/policy/ssp;->bio(Landroid/view/MotionEvent;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    if-eq v0, v3, :cond_9

    if-eq v0, v1, :cond_9

    and-int/lit16 p1, v0, 0xff

    const/4 v4, 0x6

    if-ne p1, v4, :cond_d

    :cond_9
    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    goto :goto_2

    :cond_a
    iget p1, p0, Lcom/android/server/policy/ssp;->you:I

    if-ne p1, v1, :cond_b

    iget-boolean p1, p0, Lcom/android/server/policy/ssp;->bvj:Z

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/server/policy/ssp;->wtn()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/policy/ssp;->rtg:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    iget p1, p0, Lcom/android/server/policy/ssp;->you:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/policy/ssp;->you:I

    iget-object p1, p0, Lcom/android/server/policy/ssp;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/policy/ssp;->cno:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/policy/ssp;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_c
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/ssp;->zta:Z

    iput v2, p0, Lcom/android/server/policy/ssp;->you:I

    :cond_d
    :goto_3
    return-void
.end method
