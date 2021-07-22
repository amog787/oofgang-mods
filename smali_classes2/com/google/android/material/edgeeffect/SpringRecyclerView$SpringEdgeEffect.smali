.class Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private mReleased:Z

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/edgeeffect/SpringRecyclerView;Landroid/content/Context;F)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    .line 681
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 678
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mReleased:Z

    .line 682
    iput p3, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mVelocityMultiplier:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    int-to-float p1, p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, p0

    invoke-static {v0, p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1000(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)V

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    .line 699
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1100(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 700
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1100(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 703
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1208(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)I

    .line 704
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p2, p0}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1300(Lcom/google/android/material/edgeeffect/SpringRecyclerView;Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;)V

    .line 705
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1400(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1402(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)F

    .line 706
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1400(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1500(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1402(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)F

    goto :goto_0

    .line 708
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1400(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1600(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 709
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1402(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)F

    goto :goto_0

    .line 710
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1700(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 711
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1400(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->setDampedScrollShift(F)V

    goto :goto_0

    .line 713
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1400(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->setDampedScrollShift(F)V

    :goto_0
    const/4 p1, 0x0

    .line 714
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mReleased:Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 719
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1402(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)F

    .line 723
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1202(Lcom/google/android/material/edgeeffect/SpringRecyclerView;I)I

    .line 724
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$1000(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)V

    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringRecyclerView$SpringEdgeEffect;->mReleased:Z

    return-void
.end method
