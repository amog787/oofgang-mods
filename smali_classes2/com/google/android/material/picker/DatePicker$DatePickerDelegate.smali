.class interface abstract Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DatePickerDelegate"
.end annotation


# virtual methods
.method public abstract getCalendarView()Landroid/widget/CalendarView;
.end method

.method public abstract getCalendarViewShown()Z
.end method

.method public abstract getDate()J
.end method

.method public abstract getDayOfMonth()I
.end method

.method public abstract getFirstDayOfWeek()I
.end method

.method public abstract getMaxDate()Ljava/util/Calendar;
.end method

.method public abstract getMinDate()Ljava/util/Calendar;
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSpinnersShown()Z
.end method

.method public abstract getYear()I
.end method

.method public abstract init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setAutoFillChangeListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
.end method

.method public abstract setCalendarViewShown(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setFirstDayOfWeek(I)V
.end method

.method public abstract setMaxDate(J)V
.end method

.method public abstract setMinDate(J)V
.end method

.method public abstract setOnDateChangedListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
.end method

.method public abstract setSpinnersShown(Z)V
.end method

.method public abstract setValidationCallback(Lcom/google/android/material/picker/DatePicker$ValidationCallback;)V
.end method

.method public abstract updateDate(III)V
.end method

.method public abstract updateDate(J)V
.end method
