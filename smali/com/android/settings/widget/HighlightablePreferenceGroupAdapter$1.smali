.class Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    invoke-static {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->access$000(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
