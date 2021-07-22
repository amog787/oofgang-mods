.class Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerSpinnerDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$000(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 105
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$400(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result p1

    .line 106
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$400(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-ne p3, p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$500(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 109
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-virtual {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$100(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$102(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;Z)Z

    .line 111
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$200(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$500(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_3

    if-ne p3, v0, :cond_3

    .line 115
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$500(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 116
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-virtual {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 117
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$100(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$102(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;Z)Z

    .line 118
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$200(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$500(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    .line 122
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$300(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    return-void
.end method
