.class public Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "IntrinsicSizeFrameLayout.java"


# instance fields
.field private intrinsicHeight:I

.field private intrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    .line 38
    iput v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicWidth:I

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    .line 38
    iput v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicWidth:I

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    .line 38
    iput v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicWidth:I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getIntrinsicMeasureSpec(II)I
    .locals 3

    if-gtz p2, :cond_0

    return p1

    .line 79
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez p2, :cond_1

    .line 83
    iget p0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_2

    .line 87
    iget p0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudIntrinsicSizeFrameLayout:[I

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIntrinsicSizeFrameLayout_android_height:I

    .line 61
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    .line 62
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIntrinsicSizeFrameLayout_android_width:I

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicWidth:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicWidth:I

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->intrinsicHeight:I

    .line 71
    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result p2

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
