.class Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SliceContextualCardRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->initDismissalActions(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

.field final synthetic val$card:Lcom/android/settings/homepage/contextualcards/ContextualCard;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;->this$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;->val$card:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/high16 p0, 0x100000

    .line 187
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p0, 0x1

    .line 188
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;->this$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->access$100(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;)Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;->this$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->access$000(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;->val$card:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 195
    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$1;->val$card:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 195
    invoke-interface {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
