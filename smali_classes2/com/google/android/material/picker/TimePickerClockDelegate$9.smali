.class Lcom/google/android/material/picker/TimePickerClockDelegate$9;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;
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

    .line 1227
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$9;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/google/android/material/picker/NumericTextView;IZZ)V
    .locals 2

    .line 1233
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$9;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;

    move-result-object p2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1234
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$9;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2100(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object p2

    .line 1235
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$9;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 1236
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$9;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;

    move-result-object p2

    if-ne p1, p2, :cond_3

    .line 1237
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$9;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2300(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object p2

    .line 1243
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 1249
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_2
    const-wide/16 p3, 0x7d0

    .line 1257
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
