.class public final synthetic Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/MediaAnimationController;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;->f$0:Lcom/android/settings/widget/MediaAnimationController;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;->f$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object v1, p0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/widget/MediaAnimationController;->lambda$attachView$2$MediaAnimationController(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
