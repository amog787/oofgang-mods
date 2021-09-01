.class Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;
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

    .line 72
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$000(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 76
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$100(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$102(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;Z)Z

    .line 80
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$200(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$300(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    return-void
.end method
