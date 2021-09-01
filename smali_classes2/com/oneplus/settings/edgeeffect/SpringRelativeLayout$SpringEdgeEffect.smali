.class Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 197
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 198
    iput p3, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

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

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    int-to-float p1, p1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$200(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V

    .line 209
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$302(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 2

    .line 214
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$400(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 215
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$400(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 217
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$508(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)I

    .line 218
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p2, p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$600(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V

    .line 219
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    invoke-static {p2, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$316(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F

    .line 220
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$700(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$300(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result p2

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$300(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result p2

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$302(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$502(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;I)I

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$000(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result v0

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$802(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Z)Z

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$200(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V

    return-void
.end method
