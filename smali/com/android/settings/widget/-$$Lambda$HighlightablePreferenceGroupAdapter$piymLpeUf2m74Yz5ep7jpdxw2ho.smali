.class public final synthetic Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;->f$0:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$addHighlightBackground$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
