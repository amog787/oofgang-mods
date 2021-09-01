.class public Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "LinkAccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;
    }
.end annotation


# instance fields
.field private final delegate:Landroidx/core/view/AccessibilityDelegateCompat;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 78
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;

    invoke-direct {v0, p1}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    move-object p1, v0

    .line 75
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    instance-of v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 142
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
