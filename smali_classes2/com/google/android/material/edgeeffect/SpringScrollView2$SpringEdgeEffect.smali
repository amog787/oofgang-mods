.class Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringScrollView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringScrollView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private mReleased:Z

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/edgeeffect/SpringScrollView2;Landroid/content/Context;F)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    .line 854
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 851
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mReleased:Z

    .line 855
    iput p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mVelocityMultiplier:F

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

    .line 865
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$200(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)V

    .line 866
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$302(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    .line 871
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$400(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 872
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$400(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 874
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$508(Lcom/google/android/material/edgeeffect/SpringScrollView2;)I

    .line 875
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p2, p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$600(Lcom/google/android/material/edgeeffect/SpringScrollView2;Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;)V

    .line 876
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$300(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$302(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)F

    .line 877
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$300(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$700(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 878
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$302(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)F

    goto :goto_0

    .line 879
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$300(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$800(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 880
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$302(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)F

    .line 882
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$300(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setDampedScrollShift(F)V

    const/4 p1, 0x0

    .line 883
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mReleased:Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 888
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$302(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)F

    .line 892
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$502(Lcom/google/android/material/edgeeffect/SpringScrollView2;I)I

    .line 893
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$200(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)V

    const/4 v0, 0x1

    .line 894
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;->mReleased:Z

    return-void
.end method
