.class public Landroidx/leanback/widget/ShadowOverlayContainer;
.super Landroid/widget/FrameLayout;
.source "ShadowOverlayContainer.java"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mInitialized:Z

.field mOverlayColor:I

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mShadowImpl:Ljava/lang/Object;

.field private mShadowType:I

.field private mWrappedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 75
    iput p1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 102
    invoke-virtual {p0}, Landroidx/leanback/widget/ShadowOverlayContainer;->useStaticShadow()V

    .line 103
    invoke-virtual {p0}, Landroidx/leanback/widget/ShadowOverlayContainer;->useDynamicShadow()V

    return-void
.end method

.method public static supportsDynamicShadow()Z
    .locals 1

    .line 129
    invoke-static {}, Landroidx/leanback/widget/ShadowHelper;->supportsDynamicShadow()Z

    move-result v0

    return v0
.end method

.method public static supportsShadow()Z
    .locals 1

    .line 122
    invoke-static {}, Landroidx/leanback/widget/StaticShadowHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 248
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getShadowType()I
    .locals 0

    .line 181
    iget p0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    return p0
.end method

.method public getWrappedView()Landroid/view/View;
    .locals 0

    .line 310
    iget-object p0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 317
    sget-object p2, Landroidx/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 318
    sget-object p1, Landroidx/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPivotY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 319
    iget-object p1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    sget-object p2, Landroidx/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 320
    sget-object p1, Landroidx/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 321
    sget-object p1, Landroidx/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 2

    .line 267
    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 268
    iget v1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    if-eq p1, v1, :cond_0

    .line 269
    iput p1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    .line 270
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShadowFocusLevel(F)V
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mShadowImpl:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 259
    iget p0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    invoke-static {v0, p0, p1}, Landroidx/leanback/widget/ShadowOverlayHelper;->setShadowFocusLevel(Ljava/lang/Object;IF)V

    :cond_0
    return-void
.end method

.method public useDynamicShadow()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_material_shadow_normal_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$dimen;->lb_material_shadow_focused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/ShadowOverlayContainer;->useDynamicShadow(FF)V

    return-void
.end method

.method public useDynamicShadow(FF)V
    .locals 0

    .line 154
    iget-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-nez p1, :cond_1

    .line 157
    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayContainer;->supportsDynamicShadow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 158
    iput p1, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useStaticShadow()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayContainer;->supportsShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 172
    iput v0, p0, Landroidx/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    :cond_0
    return-void

    .line 169
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
