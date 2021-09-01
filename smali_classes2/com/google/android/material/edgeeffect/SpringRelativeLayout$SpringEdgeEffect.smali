.class Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private mReleased:Z

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 230
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mReleased:Z

    .line 231
    iput p3, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

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

    .line 241
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$300(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)V

    .line 242
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$402(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    .line 247
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$500(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 248
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$500(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 250
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$608(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)I

    .line 251
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p2, p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$700(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V

    .line 252
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$400(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$402(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)F

    .line 254
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$400(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$800(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$402(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)F

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$400(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$900(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$402(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)F

    goto :goto_0

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$1000(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 259
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$400(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$400(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    :goto_0
    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mReleased:Z

    return-void
.end method

.method public onRelease()V
    .locals 7

    .line 268
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$402(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)F

    .line 272
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$602(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;I)I

    .line 273
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$000(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result v0

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {v0, v2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$1102(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Z)Z

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$300(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;->mReleased:Z

    return-void
.end method
