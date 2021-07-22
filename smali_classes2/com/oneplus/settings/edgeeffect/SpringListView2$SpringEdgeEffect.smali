.class Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Landroid/content/Context;F)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    .line 719
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 720
    iput p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->mVelocityMultiplier:F

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

    .line 731
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    int-to-float p1, p1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V

    .line 732
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$302(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 2

    .line 737
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 738
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 740
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$508(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I

    .line 741
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$600(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V

    .line 744
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    invoke-static {p2, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$316(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F

    .line 746
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p2

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setDampedScrollShift(F)V

    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$302(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F

    .line 754
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$502(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I

    .line 757
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V

    return-void
.end method
