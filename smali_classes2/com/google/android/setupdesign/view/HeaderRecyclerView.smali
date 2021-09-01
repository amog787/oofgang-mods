.class public Lcom/google/android/setupdesign/view/HeaderRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;,
        Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private header:Landroid/view/View;

.field private headerRes:I

.field private shouldHandleActionUp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 206
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldHandleActionUp:Z

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldHandleActionUp:Z

    .line 212
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldHandleActionUp:Z

    .line 217
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private handleDpadDown()Z
    .locals 5

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    .line 251
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 252
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v4, 0x1

    .line 254
    aget v3, v3, v4

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    aget v0, v2, v4

    .line 256
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    if-lez v3, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 274
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return v4

    :cond_1
    return v1
.end method

.method private handleDpadUp()Z
    .locals 5

    .line 282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    .line 290
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 291
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v0, 0x1

    .line 293
    aget v3, v3, v0

    aget v2, v2, v0

    sub-int/2addr v3, v2

    if-gez v3, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, -0x40cccccd    # -0.7f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 306
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return v0

    :cond_1
    return v1
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 315
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldHandleActionUp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 316
    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldHandleActionUp:Z

    return v2

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 320
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->handleDpadDown()Z

    move-result v1

    goto :goto_0

    .line 325
    :cond_2
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->handleDpadUp()Z

    move-result v1

    .line 329
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldHandleActionUp:Z

    :cond_3
    return v1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudHeaderRecyclerView:[I

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 224
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudHeaderRecyclerView_sudHeader:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->headerRes:I

    .line 225
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 337
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 340
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 230
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 234
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 235
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 236
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 237
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 371
    new-instance v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 372
    iget-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->setHeader(Landroid/view/View;)V

    move-object p1, v0

    .line 375
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 358
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->headerRes:I

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 363
    iget v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->headerRes:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    :cond_0
    return-void
.end method
