.class abstract Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Ljava/util/Calendar;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Lcom/google/android/material/picker/DatePicker;

.field protected mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;)V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    .line 572
    iput-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 574
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 609
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFormattedCurrentDate()Ljava/lang/String;
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x16

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public setAutoFillChangeListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 580
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public setValidationCallback(Lcom/google/android/material/picker/DatePicker$ValidationCallback;)V
    .locals 0

    return-void
.end method

.method public updateDate(J)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 602
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 603
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x5

    .line 604
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 603
    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->updateDate(III)V

    return-void
.end method
