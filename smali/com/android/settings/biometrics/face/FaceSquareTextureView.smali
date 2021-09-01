.class public Lcom/android/settings/biometrics/face/FaceSquareTextureView;
.super Landroid/view/TextureView;
.source "FaceSquareTextureView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 47
    invoke-virtual {p0, p1, p1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p2, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method
