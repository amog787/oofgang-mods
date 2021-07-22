.class public Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;,
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

.field private mDampedScrollShift:F

.field private mDistance:F

.field private mHorizontal:Z

.field private mPullCount:I

.field private mReadyToGo:Z

.field private final mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field protected final mSpringViews:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    .line 69
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDistance:F

    .line 70
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mPullCount:I

    .line 82
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p2, p0, p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 83
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p1, 0x44138000    # 590.0f

    .line 84
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 85
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 83
    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDistance:F

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDistance:F

    return p1
.end method

.method static synthetic access$316(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F
    .locals 1

    .line 41
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDistance:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)I
    .locals 2

    .line 41
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mReadyToGo:Z

    return p1
.end method

.method private finishScrollWithVelocity(F)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 155
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 156
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    .line 133
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method public addSpringView(I)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createEdgeEffectFactory(Z)Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p0

    return-object p0
.end method

.method public createEdgeEffectFactory(Z)Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 1

    .line 188
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    .line 189
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;)V

    return-object p1
.end method

.method public createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createViewEdgeEffectFactory(Z)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    move-result-object p0

    return-object p0
.end method

.method public createViewEdgeEffectFactory(Z)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
    .locals 1

    .line 278
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    .line 279
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;)V

    return-object p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 110
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 113
    iget-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mHorizontal:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->getCanvasClipLeftForOverscroll()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 115
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->getCanvasClipTopForOverscroll()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 118
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 122
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0

    .line 126
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public getCanvasClipLeftForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 144
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDistance:F

    const/4 v1, 0x0

    .line 149
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mPullCount:I

    .line 150
    invoke-direct {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->finishScrollWithVelocity(F)V

    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 137
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 138
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->mDampedScrollShift:F

    .line 139
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method
