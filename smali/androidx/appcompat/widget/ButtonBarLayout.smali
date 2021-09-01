.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 55
    sget-object v0, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 57
    sget-object v3, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 59
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isStacked()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setStacked(Z)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/16 p1, 0x50

    .line 177
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 179
    sget p1, Landroidx/appcompat/R$id;->spacer:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x4

    .line 181
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 1

    .line 156
    iget v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 76
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 77
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 82
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 91
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_2

    const/high16 v1, -0x80000000

    .line 92
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v3

    goto :goto_0

    :cond_2
    move v0, p1

    move v1, v2

    .line 100
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 110
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    move v1, v3

    :cond_4
    if-eqz v1, :cond_5

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 123
    :cond_5
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result p1

    if-ltz p1, :cond_8

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    add-int/2addr v1, v2

    .line 129
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/2addr p1, v3

    .line 130
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result p1

    if-ltz p1, :cond_6

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    .line 133
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    :cond_6
    move v2, v1

    goto :goto_2

    .line 136
    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    add-int v2, v1, p1

    .line 140
    :cond_8
    :goto_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    if-eq p1, v2, :cond_9

    .line 141
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_9
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 65
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    return-void
.end method
