.class Lcom/oneplus/libs/FlipDrawable$1;
.super Ljava/lang/Object;
.source "FlipDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/libs/FlipDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/libs/FlipDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/libs/FlipDrawable;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oneplus/libs/FlipDrawable$1;->this$0:Lcom/oneplus/libs/FlipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable$1;->this$0:Lcom/oneplus/libs/FlipDrawable;

    invoke-static {v0}, Lcom/oneplus/libs/FlipDrawable;->access$000(Lcom/oneplus/libs/FlipDrawable;)F

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/oneplus/libs/FlipDrawable$1;->this$0:Lcom/oneplus/libs/FlipDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1}, Lcom/oneplus/libs/FlipDrawable;->access$002(Lcom/oneplus/libs/FlipDrawable;F)F

    .line 110
    iget-object p1, p0, Lcom/oneplus/libs/FlipDrawable$1;->this$0:Lcom/oneplus/libs/FlipDrawable;

    invoke-static {p1}, Lcom/oneplus/libs/FlipDrawable;->access$000(Lcom/oneplus/libs/FlipDrawable;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable$1;->this$0:Lcom/oneplus/libs/FlipDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
