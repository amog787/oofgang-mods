.class Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;


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

    .line 229
    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Lcom/google/android/material/picker/DayPickerView;Ljava/util/Calendar;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    iget-object p1, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 233
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->access$000(Lcom/google/android/material/picker/DatePickerCalendarDelegate;ZZ)V

    return-void
.end method
