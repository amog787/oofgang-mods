.class Lcom/google/android/material/picker/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;->animationInInputTimeFieldBefore()V
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

    .line 350
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$500(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/RadialTimePickerView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$600(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$402(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 353
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->showInputBlock(Z)V

    .line 354
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->showLabels(Z)V

    .line 355
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$300(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 356
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$402(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z

    return-void
.end method
