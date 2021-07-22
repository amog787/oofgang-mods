.class public Lcom/google/android/material/picker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DatePicker$ValidationCallback;,
        Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;,
        Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;,
        Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    sget-object v0, Lcom/google/android/material/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    sget v1, Lcom/google/android/material/R$styleable;->DatePicker_dialogMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 133
    sget v3, Lcom/google/android/material/R$styleable;->DatePicker_android_datePickerMode:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 134
    sget v4, Lcom/google/android/material/R$styleable;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$integer;->date_picker_mode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/picker/DatePicker;->mMode:I

    goto :goto_0

    .line 142
    :cond_0
    iput v3, p0, Lcom/google/android/material/picker/DatePicker;->mMode:I

    .line 145
    :goto_0
    iget v1, p0, Lcom/google/android/material/picker/DatePicker;->mMode:I

    if-eq v1, v0, :cond_1

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/picker/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    goto :goto_1

    .line 147
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/picker/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    :goto_1
    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p0, v2}, Lcom/google/android/material/picker/DatePicker;->setFirstDayOfWeek(I)V

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    new-instance p2, Lcom/google/android/material/picker/DatePicker$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePicker$1;-><init>(Lcom/google/android/material/picker/DatePicker;)V

    invoke-interface {p1, p2}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setAutoFillChangeListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;
    .locals 7

    .line 179
    new-instance v6, Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method private createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;
    .locals 7

    .line 174
    new-instance v6, Lcom/google/android/material/picker/DatePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/DatePickerSpinnerDelegate;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2

    .line 755
    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 757
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    sget-object v0, Lcom/google/android/material/picker/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 762
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->updateDate(J)V

    :cond_2
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 469
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 335
    const-class p0, Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAutofillType()I
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    .line 773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 777
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object p0

    return-object p0
.end method

.method public getCalendarViewShown()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    move-result p0

    return p0
.end method

.method public getDayOfMonth()I
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 287
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getMaxDate()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 262
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getMinDate()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 0

    .line 191
    iget p0, p0, Lcom/google/android/material/picker/DatePicker;->mMode:I

    return p0
.end method

.method public getMonth()I
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getMonth()I

    move-result p0

    return p0
.end method

.method public getSpinnersShown()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->getYear()I

    move-result p0

    return p0
.end method

.method public init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 341
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 480
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 481
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    instance-of p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    if-eqz p1, :cond_0

    .line 482
    check-cast p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->changeYearLayoutParams()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 488
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 489
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 490
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 474
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 475
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, v0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 317
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    return-void

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDate(J)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1, p2}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1, p2}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setOnDateChangedListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    return-void
.end method

.method public setValidationCallback(Lcom/google/android/material/picker/DatePicker$ValidationCallback;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker;->mDelegate:Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;->setValidationCallback(Lcom/google/android/material/picker/DatePicker$ValidationCallback;)V

    return-void
.end method
