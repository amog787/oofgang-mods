.class Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;
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

    .line 152
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    .line 155
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$000(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 156
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 157
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$100(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$102(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;Z)Z

    .line 158
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$200(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    .line 159
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;->this$0:Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->access$300(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    return-void
.end method
