.class Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringNestScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private mReleased:Z

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Landroid/content/Context;F)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    .line 817
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 814
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mReleased:Z

    .line 818
    iput p3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mVelocityMultiplier:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$300(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)V

    .line 830
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    .line 835
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$500(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 836
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$500(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 838
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$608(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)I

    .line 839
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p2, p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$700(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V

    .line 842
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$400(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F

    .line 844
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$400(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$800(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 845
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F

    goto :goto_0

    .line 846
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$400(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$900(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 847
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F

    .line 849
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$400(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setDampedScrollShift(F)V

    const/4 p1, 0x0

    .line 851
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mReleased:Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 856
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F

    .line 861
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$602(Lcom/google/android/material/edgeeffect/SpringNestScrollView;I)I

    .line 864
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->access$300(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)V

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;->mReleased:Z

    return-void
.end method
