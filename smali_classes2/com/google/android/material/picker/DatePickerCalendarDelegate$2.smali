.class Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Lcom/google/android/material/picker/YearPickerView;I)V
    .locals 3

    .line 259
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    iget-object p1, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 260
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    iget-object v1, v1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 261
    invoke-static {v1, p2}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result v1

    if-le p1, v1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    iget-object p1, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    iget-object p1, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 267
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-static {p0, v0, v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->access$000(Lcom/google/android/material/picker/DatePickerCalendarDelegate;ZZ)V

    return-void
.end method
