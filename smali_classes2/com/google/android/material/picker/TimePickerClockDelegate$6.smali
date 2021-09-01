.class Lcom/google/android/material/picker/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;->animationOutInputTimeField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 563
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$500(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/RadialTimePickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$600(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 565
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$800(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$900(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 568
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$402(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 545
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object v0, v0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 550
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$700(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 551
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object p1, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$drawable;->op_dialog_material_background_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 553
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 554
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object p1, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$color;->op_control_bg_color_popup_default:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    .line 555
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->showInputBlock(Z)V

    .line 558
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$6;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$402(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z

    return-void
.end method
