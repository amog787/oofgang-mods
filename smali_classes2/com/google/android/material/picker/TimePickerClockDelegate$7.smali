.class Lcom/google/android/material/picker/TimePickerClockDelegate$7;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;


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

    .line 1173
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 1192
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result p1

    if-eq p1, p2, :cond_1

    move v0, v1

    .line 1195
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, p2, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;II)V

    goto :goto_2

    .line 1179
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result p1

    if-eq p1, p2, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 1182
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1300(Lcom/google/android/material/picker/TimePickerClockDelegate;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_1

    :cond_4
    move p3, v0

    .line 1183
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    xor-int/lit8 v3, p3, 0x1

    invoke-static {v2, p2, v1, v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;IIZ)V

    if-eqz p3, :cond_5

    .line 1185
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p3, v1, v1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1500(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    .line 1187
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p3, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1600(Lcom/google/android/material/picker/TimePickerClockDelegate;I)I

    move-result p2

    .line 1188
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object p3, p3, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1700(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    move v0, p1

    .line 1201
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    iget-object p2, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 1202
    iget-object p3, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$7;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {p2, p3, p1, p0}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_6
    return-void
.end method
