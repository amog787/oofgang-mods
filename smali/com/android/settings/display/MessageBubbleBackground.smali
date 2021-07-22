.class public Lcom/android/settings/display/MessageBubbleBackground;
.super Landroid/widget/LinearLayout;
.source "MessageBubbleBackground.java"


# instance fields
.field private final mSnapWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->conversation_bubble_width_snap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float v1, v1

    .line 41
    iget v2, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    iget v3, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 41
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 43
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
