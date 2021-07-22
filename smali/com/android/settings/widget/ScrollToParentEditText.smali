.class public Lcom/android/settings/widget/ScrollToParentEditText;
.super Landroid/widget/ImeAwareEditText;
.source "ScrollToParentEditText.java"


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 42
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImeAwareEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method
