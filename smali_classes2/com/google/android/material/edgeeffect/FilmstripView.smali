.class public Lcom/google/android/material/edgeeffect/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;,
        Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;,
        Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;,
        Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;,
        Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

.field private m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

.field private m_FastLayoutCounter:I

.field private m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private final m_GestureDetector:Landroid/view/GestureDetector;

.field private final m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private m_Handler:Landroid/os/Handler;

.field private m_HasMultiPointers:Z

.field private m_Height:I

.field private m_IsFlying:Z

.field private m_IsOverScrolled:Z

.field private m_IsScrollLeftRight:Ljava/lang/Boolean;

.field private m_IsScrolling:Z

.field private m_ItemMargin:I

.field private m_LastPosition:I

.field private m_OnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_ReportedCurrentPosition:I

.field private m_ScreenOrientation:I

.field private m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

.field private m_ScrollMode:I

.field private m_ScrollToItemStartTime:J

.field private m_TotalScrollDistanceX:F

.field private m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 452
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$1;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/16 v0, 0x32

    .line 128
    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    .line 132
    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    .line 136
    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 453
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->setupHandler()V

    .line 454
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 465
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance p2, Lcom/google/android/material/edgeeffect/FilmstripView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$1;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/16 p2, 0x32

    .line 128
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    const/4 p2, -0x1

    .line 131
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    .line 132
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    const/4 p2, 0x0

    .line 134
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    .line 136
    sget-object p2, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    const/4 p2, 0x0

    .line 143
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 466
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->setupHandler()V

    .line 467
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/os/Message;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I
    .locals 0

    .line 511
    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    div-int/lit8 p0, p0, 0x2

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    :goto_0
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0
.end method

.method private clearItems()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz v0, :cond_0

    .line 521
    iget-object v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 522
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 526
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 527
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    return-void
.end method

.method private fastLayout()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz v0, :cond_0

    .line 580
    iget v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 581
    iget-object v0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findItemInfo(FF)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 611
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 613
    iget p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 614
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p0, :cond_1

    .line 617
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    sub-float v1, v0, p2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 619
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(IZ)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method private findItemInfo(IZ)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 1

    .line 600
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p0, :cond_2

    .line 603
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    return-object p0

    .line 605
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private fly(FJ)V
    .locals 6

    .line 475
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long p2, v0, p2

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    mul-float p3, p1, p2

    const/high16 v2, -0x3a060000    # -8000.0f

    mul-float/2addr v2, p2

    mul-float/2addr p2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p2, v3

    add-float/2addr p3, p2

    .line 481
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    .line 482
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    add-float/2addr p1, v2

    .line 490
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v2

    .line 492
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 495
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p3

    .line 496
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 497
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    if-lez v4, :cond_5

    cmpl-float v4, p1, p2

    if-lez v4, :cond_3

    if-lez p3, :cond_5

    :cond_3
    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    sub-int/2addr v2, v5

    if-lt p3, v2, :cond_4

    goto :goto_2

    .line 504
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 p2, 0x2711

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-static {p0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0xa

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 499
    :cond_5
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-ltz p3, :cond_6

    .line 501
    invoke-direct {p0, p3, v5}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    :cond_6
    :goto_3
    return-void
.end method

.method private getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 6

    .line 696
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    .line 699
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 702
    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    sub-float v4, v1, v4

    .line 703
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-eqz v3, :cond_0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_1

    :cond_0
    move-object v3, p0

    move v0, v4

    .line 709
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 754
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271a

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 768
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 762
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 763
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->fly(FJ)V

    goto :goto_0

    .line 773
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz v0, :cond_1

    .line 774
    check-cast p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V

    goto :goto_0

    .line 775
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 776
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(IZ)V

    goto :goto_0

    .line 778
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Z)V

    goto :goto_0

    .line 757
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->fastLayout()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obtainItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    .line 798
    iget-object v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 799
    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->remove()V

    const/4 p0, 0x0

    .line 800
    iput-boolean p0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    .line 801
    iget-object p0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 805
    :cond_0
    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView$1;)V

    .line 806
    new-instance v1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;-><init>(Landroid/content/Context;Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    .line 808
    :goto_0
    iput p1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    return-object v0
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1157
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopAutoScroll()V

    const/4 v0, 0x0

    .line 1160
    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(FF)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1162
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_LastPosition:I

    const/4 p1, 0x0

    .line 1163
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    return-void
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 5

    .line 1171
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    if-eqz p1, :cond_0

    return-void

    .line 1175
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, p2, :cond_9

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz p1, :cond_9

    .line 1177
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    const/16 p2, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-gez p1, :cond_5

    .line 1179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v4, "window"

    .line 1180
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 1183
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    .line 1195
    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    goto :goto_1

    .line 1192
    :cond_2
    iput v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    goto :goto_1

    .line 1189
    :cond_3
    iput v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    goto :goto_1

    .line 1186
    :cond_4
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    .line 1200
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/Rotation;->getDeviceOrientation()I

    move-result p1

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    sub-int/2addr p1, v4

    const/16 v4, -0x10e

    if-eq p1, v4, :cond_8

    const/16 v4, -0xb4

    if-eq p1, v4, :cond_7

    const/16 v4, -0x5a

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move p3, p4

    goto :goto_2

    :cond_7
    neg-float p3, p3

    goto :goto_2

    :cond_8
    neg-float p3, p4

    .line 1229
    :cond_9
    :goto_2
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    if-eq p1, v1, :cond_a

    goto/16 :goto_6

    .line 1249
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-nez p1, :cond_b

    goto/16 :goto_6

    .line 1251
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz p1, :cond_c

    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-nez p1, :cond_c

    cmpl-float p1, p3, p2

    if-lez p1, :cond_c

    .line 1254
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p1, p4, :cond_c

    goto :goto_6

    .line 1258
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz p1, :cond_d

    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    iget-object p4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    .line 1259
    invoke-virtual {p4}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result p4

    if-lt p1, p4, :cond_d

    cmpg-float p1, p3, p2

    if-gez p1, :cond_d

    .line 1261
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p1, p2, :cond_d

    goto :goto_6

    .line 1265
    :cond_d
    invoke-direct {p0, p3}, Lcom/google/android/material/edgeeffect/FilmstripView;->startFly(F)V

    goto :goto_6

    .line 1233
    :cond_e
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    :cond_f
    if-gtz v0, :cond_10

    goto :goto_6

    .line 1236
    :cond_10
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_LastPosition:I

    if-ltz p1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    .line 1237
    :goto_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpl-float p4, p4, v2

    if-ltz p4, :cond_14

    cmpl-float p2, p3, p2

    if-lez p2, :cond_12

    .line 1239
    sget-object p3, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->RIGHT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    goto :goto_4

    :cond_12
    sget-object p3, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    :goto_4
    if-lez p2, :cond_13

    const/4 p2, -0x1

    goto :goto_5

    :cond_13
    move p2, v1

    :goto_5
    add-int/2addr p1, p2

    if-ltz p1, :cond_14

    if-ge p1, v0, :cond_14

    .line 1242
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    :cond_14
    :goto_6
    return-void
.end method

.method private onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 1276
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    if-eqz p1, :cond_0

    return-void

    .line 1280
    :cond_0
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    .line 1284
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    .line 1286
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 1287
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    goto :goto_0

    .line 1289
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1291
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 1295
    :cond_4
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1296
    iget-boolean p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    const/4 p1, 0x1

    .line 1298
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    .line 1299
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p2, :cond_5

    iget-boolean p4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez p4, :cond_5

    .line 1301
    iput-boolean p1, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1302
    invoke-virtual {p2}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStarted()V

    .line 1305
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onGestureScroll "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FilmStrip"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    neg-float p1, p3

    .line 1307
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    return-void
.end method

.method private onGestureUp(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 p1, 0x0

    .line 1315
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    .line 1316
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    const/4 p1, 0x0

    .line 1317
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1320
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 1324
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    .line 1327
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->resetTouch()V

    return-void
.end method

.method private prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 3

    .line 1385
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->obtainItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1386
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    .line 1387
    iput v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    .line 1388
    iget v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    .line 1389
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    .line 1390
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    .line 1391
    iget-object p1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1392
    iget-object p0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 1394
    :cond_0
    iget-object p1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-object v0
.end method

.method private pullGlows(F)V
    .locals 7

    .line 2070
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-gez v2, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->ensureLeftGlow()V

    .line 2080
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    if-lt v0, v4, :cond_2

    neg-float v4, p1

    .line 2082
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 2087
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->ensureRightGlow()V

    .line 2089
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    if-lt v0, v4, :cond_2

    .line 2091
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    :cond_3
    const/16 p1, 0x10

    if-lt v0, p1, :cond_4

    .line 2099
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method private refreshItems(I)V
    .locals 7

    .line 1408
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gez p1, :cond_1

    move p1, v1

    :cond_1
    if-lt p1, v0, :cond_2

    add-int/lit8 p1, v0, -0x1

    .line 1415
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->clearItems()V

    if-lez v0, :cond_7

    if-gez p1, :cond_3

    goto/16 :goto_3

    .line 1425
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1426
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1427
    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1428
    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    add-int/lit8 v3, p1, -0x1

    .line 1432
    iget v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    if-ltz v3, :cond_4

    .line 1436
    invoke-direct {p0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v5

    .line 1437
    iget v6, v5, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1438
    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v5, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addBefore(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 1439
    iput-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1440
    iget v4, v5, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p1, 0x1

    .line 1444
    iget v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    .line 1445
    :goto_2
    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_5

    if-ge v3, v0, :cond_5

    .line 1447
    invoke-direct {p0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1448
    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1449
    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addAfter(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 1450
    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1451
    iget v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1456
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->reportCurrentPosition(I)V

    .line 1457
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz v0, :cond_6

    .line 1459
    invoke-virtual {v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1460
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz p1, :cond_6

    .line 1462
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1463
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStopped()V

    :cond_6
    return-void

    :cond_7
    :goto_3
    const/4 p1, -0x1

    .line 1420
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->reportCurrentPosition(I)V

    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 2150
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2152
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 2156
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2157
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 2161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 2162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V
    .locals 3

    .line 1474
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    .line 1475
    iget-object v0, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1476
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1477
    iget v1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    goto :goto_0

    .line 1479
    :cond_0
    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseItem() - No adapter to release item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_0
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    .line 1482
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItemInfo(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    return-void
.end method

.method private releaseItemInfo(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V
    .locals 1

    .line 1489
    iget-object v0, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1490
    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->remove()V

    .line 1491
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addBefore(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 1492
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 1

    .line 1499
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v0, p1, :cond_0

    .line 1502
    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1503
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p0, :cond_0

    .line 1504
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    :cond_0
    return-void
.end method

.method private resetTouch()V
    .locals 0

    .line 2172
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseGlows()V

    return-void
.end method

.method private scrollBy(F)F
    .locals 11

    .line 1529
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    .line 1532
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-nez v3, :cond_2

    return v2

    :cond_2
    cmpl-float v4, p1, v2

    const-string v5, " diff "

    const-string v6, " offset "

    const-string v7, "FilmStrip"

    const/4 v8, 0x1

    if-lez v4, :cond_8

    .line 1540
    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-nez v4, :cond_6

    iget-boolean v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v4, :cond_6

    .line 1542
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    int-to-float v0, v0

    .line 1543
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_5

    .line 1547
    iget-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-nez v3, :cond_3

    .line 1549
    iput-boolean v8, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    move v1, v8

    :cond_3
    move v3, v1

    .line 1554
    iget-boolean v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-eqz v4, :cond_4

    .line 1555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollBy m_IsOverScrolled "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->pullGlows(F)V

    :cond_4
    add-float/2addr p1, v0

    goto/16 :goto_4

    .line 1561
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    goto/16 :goto_3

    .line 1563
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v0, v8

    if-ne v3, v0, :cond_e

    .line 1564
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    int-to-float v0, v0

    .line 1565
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    .line 1566
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez v3, :cond_7

    .line 1567
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1568
    instance-of v4, v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v4, :cond_7

    .line 1569
    check-cast v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 1572
    :cond_7
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v3, :cond_e

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    .line 1573
    invoke-virtual {v3}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    goto/16 :goto_3

    .line 1579
    :cond_8
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v0, v8

    if-ne v4, v0, :cond_c

    iget-boolean v0, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v0, :cond_c

    .line 1581
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 1582
    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_b

    .line 1585
    iget-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-nez v3, :cond_9

    .line 1587
    iput-boolean v8, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    move v3, v8

    goto :goto_1

    :cond_9
    move v3, v1

    .line 1591
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-eqz v4, :cond_a

    .line 1592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollBy end m_IsOverScrolled "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->pullGlows(F)V

    :cond_a
    add-float/2addr p1, v0

    goto :goto_2

    .line 1598
    :cond_b
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    move v3, v1

    :goto_2
    move v10, v3

    move v3, v1

    move v1, v10

    goto :goto_4

    .line 1600
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-nez v3, :cond_e

    .line 1601
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 1602
    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    .line 1603
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez v3, :cond_d

    .line 1604
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1605
    instance-of v4, v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v4, :cond_d

    .line 1606
    check-cast v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 1609
    :cond_d
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v3, :cond_e

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    .line 1610
    invoke-virtual {v3}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_e
    :goto_3
    move v3, v1

    :goto_4
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_10

    .line 1618
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_5
    if-eqz v0, :cond_f

    .line 1621
    invoke-virtual {v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1622
    iget-object v0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_5

    .line 1624
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, v0, v8}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V

    :cond_10
    if-eqz v1, :cond_11

    .line 1630
    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "scrollBy() - Over-scroll"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p0, :cond_11

    .line 1632
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onOverScroll(Z)V

    :cond_11
    return p1
.end method

.method private scrollToItem(IZ)V
    .locals 11

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollToItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilmStrip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1648
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopFly()V

    .line 1651
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 1655
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1661
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1662
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const-wide/16 v5, 0x0

    if-eqz p2, :cond_2

    .line 1673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollToItemStartTime:J

    move-wide v7, v5

    goto :goto_1

    .line 1677
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollToItemStartTime:J

    sub-long/2addr v7, v9

    :goto_1
    const-wide/16 v9, 0x258

    if-eqz v0, :cond_8

    .line 1682
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    cmp-long p2, v7, v9

    if-gez p2, :cond_7

    float-to-double v7, v0

    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    cmpl-double p2, v7, v9

    const/high16 v0, 0x40a00000    # 5.0f

    if-lez p2, :cond_3

    const/high16 p2, 0x40800000    # 4.0f

    goto :goto_2

    :cond_3
    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    cmpl-double p2, v7, v9

    if-lez p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    const/high16 p2, 0x40d00000    # 6.5f

    :goto_2
    div-float p2, v4, p2

    .line 1698
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_6

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    .line 1701
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_3

    :cond_5
    const/high16 p2, -0x3f600000    # -5.0f

    .line 1703
    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1705
    :cond_6
    :goto_3
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    .line 1706
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1710
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    .line 1711
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p2, :cond_e

    .line 1713
    invoke-virtual {p2, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1714
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p1, :cond_e

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz p1, :cond_e

    .line 1716
    iput-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1717
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_5

    .line 1724
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_d

    cmp-long v0, v7, v9

    if-gez v0, :cond_d

    .line 1727
    iget v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int v2, p1, v0

    .line 1728
    iget-boolean v4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v4, :cond_a

    if-gt v0, p1, :cond_9

    move v0, v7

    goto :goto_4

    :cond_9
    move v0, v8

    :goto_4
    add-int/2addr v2, v0

    .line 1730
    :cond_a
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_b

    .line 1732
    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    div-int/2addr v2, v4

    add-int/2addr p2, v2

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    .line 1733
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1737
    :cond_b
    iget p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    div-int/2addr p2, v4

    if-ltz v2, :cond_c

    move v7, v8

    :cond_c
    mul-int/2addr p2, v7

    int-to-float p2, p2

    .line 1738
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    .line 1739
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1743
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method private setupHandler()V
    .locals 1

    .line 1877
    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$3;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    return-void
.end method

.method private startFly(F)V
    .locals 4

    .line 1891
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopFly()V

    const/4 v0, 0x1

    .line 1892
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    .line 1893
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const/16 p1, 0x2711

    invoke-static {p0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopAutoScroll()V
    .locals 1

    .line 1900
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopFly()V

    .line 1901
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private stopFly()V
    .locals 1

    .line 1908
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1910
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    .line 1911
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateItemsLayout(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1929
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1931
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    goto :goto_1

    .line 1926
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    .line 1933
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V

    return-void
.end method

.method private updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V
    .locals 8

    .line 1938
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gtz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1944
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1948
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 1951
    iget-object v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1952
    iget v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v6, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v5, v6, :cond_8

    sub-int/2addr v6, v5

    .line 1956
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x5

    if-le v5, v7, :cond_4

    if-nez p2, :cond_3

    goto :goto_2

    .line 1970
    :cond_3
    div-int/lit8 v6, v6, 0x3

    .line 1971
    iget v1, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    add-int/2addr v1, v6

    iput v1, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    move v1, v3

    goto :goto_3

    .line 1958
    :cond_4
    :goto_2
    iget v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    iput v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    .line 1959
    iget v7, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    neg-int v7, v7

    if-gt v5, v7, :cond_7

    iget-boolean v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v5, :cond_7

    .line 1961
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne v5, v2, :cond_5

    .line 1962
    iget-object v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1963
    :cond_5
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne v5, v2, :cond_6

    .line 1964
    iget-object v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1965
    :cond_6
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 1974
    :cond_7
    :goto_3
    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget v7, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    invoke-virtual {v2, v5, v7, v3, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->layout(IIZZ)V

    if-ne v2, p1, :cond_8

    .line 1976
    div-int/lit8 v6, v6, 0x2

    neg-int v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveBy(F)V

    :cond_8
    move-object v2, v4

    goto :goto_1

    .line 1982
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-nez p2, :cond_a

    goto/16 :goto_c

    :cond_a
    if-eqz p1, :cond_c

    .line 1991
    iget-object p2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 1992
    iget v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    :goto_4
    if-eqz p2, :cond_b

    .line 1995
    iget v4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1996
    invoke-virtual {p2, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1997
    iget-object p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_4

    .line 1999
    :cond_b
    iget-object p2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 2000
    iget v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v4, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    :goto_5
    if-eqz p2, :cond_c

    .line 2003
    invoke-virtual {p2, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 2004
    iget v4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 2005
    iget-object p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_5

    .line 2010
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int/2addr p2, v3

    .line 2011
    :goto_6
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_d

    if-ltz p2, :cond_d

    .line 2013
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    .line 2014
    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v4, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 2015
    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addBefore(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 2016
    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 2019
    :cond_d
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-boolean v2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    add-int/2addr p2, v3

    .line 2020
    :goto_7
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 2021
    :goto_8
    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_f

    if-ge p2, v0, :cond_f

    .line 2023
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    .line 2024
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    iget v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    .line 2025
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addAfter(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 2026
    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 2027
    iget v3, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 2032
    :cond_f
    :goto_9
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eq p2, v0, :cond_11

    .line 2034
    iget-object v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 2035
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 2036
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p2, v2, :cond_10

    .line 2037
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 2038
    :cond_10
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_9

    .line 2040
    :cond_11
    :goto_a
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eq v0, p2, :cond_13

    .line 2042
    iget-object v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 2043
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    .line 2044
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p2, v2, :cond_12

    .line 2045
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    .line 2046
    :cond_12
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_a

    :cond_13
    if-eqz v1, :cond_15

    const-wide/16 v0, 0x0

    const/16 p2, 0x2710

    if-nez p1, :cond_14

    .line 2054
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_15

    .line 2055
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 2059
    :cond_14
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2060
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v2, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2065
    :cond_15
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->reportCurrentPosition(I)V

    return-void

    .line 1984
    :cond_16
    :goto_c
    sget-object p0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    const-string p1, "updateItemsLayout() - No active items"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateItemsLayout(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 1919
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(IZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 541
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    .line 544
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    .line 547
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    xor-int/2addr v0, v1

    .line 548
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v1, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 553
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureUp(Landroid/view/MotionEvent;)V

    .line 556
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " m_IsScrolling "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFirstScrolling "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FilmStrip"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-boolean v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    .line 561
    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 563
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 567
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 568
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_5

    .line 569
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_5
    return v1
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 2105
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "FilmstripView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 2107
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2111
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 2112
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 2122
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "FilmstripView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 2124
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2128
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 2129
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2133
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentItem()I
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-gtz v0, :cond_1

    return v1

    .line 686
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 688
    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getFirstVisibltItem()I
    .locals 1

    .line 721
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p0, :cond_0

    .line 722
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v0, :cond_0

    .line 723
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 724
    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getLastVisibltItem()I
    .locals 1

    .line 734
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p0, :cond_0

    .line 735
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 737
    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getScrollMode()I
    .locals 0

    .line 747
    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 2145
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    .line 818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInterceptTouchEvent  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "filmstripView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1335
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p1, :cond_0

    .line 1338
    iget p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget p3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4, p4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1339
    iget-object p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1349
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/16 v1, 0x7fff

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 1350
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1353
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1354
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1357
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p3

    .line 1372
    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    .line 1373
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    .line 1376
    invoke-direct {p0, p3}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filmstripView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestLayout()V
    .locals 2

    .line 1513
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    const/16 v1, 0x271a

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1520
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1521
    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setAdapter(Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;)V
    .locals 2

    .line 1754
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eq v0, p1, :cond_2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1758
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->clearItems()V

    .line 1759
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->attach(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    throw v1

    .line 1757
    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->detach(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 1776
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopAutoScroll()V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1778
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 1781
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 1784
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v1

    int-to-float v1, v1

    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    sub-float/2addr v1, p2

    .line 1785
    invoke-direct {p0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    .line 1786
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p2, :cond_2

    .line 1788
    invoke-virtual {p2, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1789
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz p1, :cond_2

    .line 1791
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1792
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1797
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDisplayRotationHint(Lcom/google/android/material/edgeeffect/Rotation;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

    const/4 p1, -0x1

    .line 1809
    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0

    .line 2140
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    .line 2141
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->invalidateGlows()V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0

    .line 1819
    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    const/4 p1, 0x1

    .line 1820
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Z)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScrollListener(Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;)V
    .locals 0

    .line 1838
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    return-void
.end method

.method public setScrollMode(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1869
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown scroll mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1857
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1861
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    .line 1862
    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    .line 1863
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_3

    .line 1865
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->setCurrentItem(IZ)V

    :cond_3
    :goto_1
    return-void
.end method
