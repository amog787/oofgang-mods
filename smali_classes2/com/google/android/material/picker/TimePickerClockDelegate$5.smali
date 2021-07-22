.class Lcom/google/android/material/picker/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;->animationInInputTimeField()V
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

    .line 443
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 447
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 450
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 451
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 452
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 453
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x230

    if-lt v1, v2, :cond_0

    const/16 v1, 0x9c4

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d0

    .line 455
    :goto_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1

    int-to-float v0, v0

    .line 456
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const/16 v2, 0x162

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 457
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object v0, v0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->op_picker_dialog_material_background_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 458
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 463
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$color;->op_control_bg_color_popup_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    .line 464
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1100(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v1, p1

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$5;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$dimen;->op_control_margin_space3:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
