.class Lcom/google/android/material/picker/TimePickerDialog$1$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerDialog$1;->keyBoardShow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/picker/TimePickerDialog$1;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerDialog$1;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 188
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {v1}, Lcom/google/android/material/picker/TimePickerDialog;->access$100(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v2, v2, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {v2}, Lcom/google/android/material/picker/TimePickerDialog;->access$200(Lcom/google/android/material/picker/TimePickerDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x176

    goto :goto_0

    :cond_0
    const/16 v2, 0x162

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v4, v0

    .line 189
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v0, v0, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {v0}, Lcom/google/android/material/picker/TimePickerDialog;->access$300(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->op_picker_dialog_material_background_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 190
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 195
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {v1}, Lcom/google/android/material/picker/TimePickerDialog;->access$400(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->op_control_bg_color_popup_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    .line 196
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v1, v1, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object v0, v0, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {v0}, Lcom/google/android/material/picker/TimePickerDialog;->access$000(Lcom/google/android/material/picker/TimePickerDialog;)Lcom/google/android/material/picker/TimePicker;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerDialog$1$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerDialog$1$1$1;-><init>(Lcom/google/android/material/picker/TimePickerDialog$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
