.class Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroidx/leanback/widget/FocusHighlightHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderItemFocusHighlight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;
    }
.end annotation


# instance fields
.field private mDuration:I

.field private mInitialized:Z

.field private mSelectScale:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private viewFocused(Landroid/view/View;Z)V
    .locals 2

    .line 320
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->lazyInit(Landroid/view/View;)V

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 322
    sget v0, Landroidx/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;

    iget v1, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    iget p0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    invoke-direct {v0, p1, v1, p0}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;-><init>(Landroid/view/View;FI)V

    .line 325
    sget p0, Landroidx/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    .line 327
    invoke-virtual {v0, p2, p0}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method


# virtual methods
.method lazyInit(Landroid/view/View;)V
    .locals 3

    .line 277
    iget-boolean v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 279
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 280
    sget v1, Landroidx/leanback/R$dimen;->lb_browse_header_select_scale:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 281
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    .line 282
    sget v1, Landroidx/leanback/R$dimen;->lb_browse_header_select_duration:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 283
    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    .line 284
    iput-boolean v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public onInitializeView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 0

    .line 332
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->viewFocused(Landroid/view/View;Z)V

    return-void
.end method
