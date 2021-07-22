.class public Lcom/google/android/material/picker/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;,
        Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;,
        Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

.field private final mMode:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/TimePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 82
    sget v0, Lcom/google/android/material/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    sget-object v0, Lcom/google/android/material/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    sget v1, Lcom/google/android/material/R$styleable;->TimePicker_dialogMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 97
    sget v2, Lcom/google/android/material/R$styleable;->TimePicker_android_timePickerMode:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->time_picker_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/TimePicker;->mMode:I

    goto :goto_0

    .line 105
    :cond_0
    iput v2, p0, Lcom/google/android/material/picker/TimePicker;->mMode:I

    .line 108
    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/TimePicker;->mMode:I

    if-eq v0, v3, :cond_1

    .line 115
    new-instance v0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    goto :goto_1

    .line 110
    :cond_1
    new-instance v0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/TimePickerClockDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    .line 119
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    new-instance p2, Lcom/google/android/material/picker/TimePicker$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/TimePicker$1;-><init>(Lcom/google/android/material/picker/TimePicker;)V

    invoke-interface {p1, p2}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setAutoFillChangeListener(Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 385
    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    .line 386
    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 505
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    sget-object v0, Lcom/google/android/material/picker/TimePicker;->LOG_TAG:Ljava/lang/String;

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

    .line 509
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setDate(J)V

    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 319
    const-class p0, Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAmView()Landroid/view/View;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getAmView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAutofillType()I
    .locals 0

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->isEnabled()Z

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

    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 524
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->getHour()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->getMinute()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getHour()I
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getHour()I

    move-result p0

    return p0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getHourView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getMinute()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getMinuteView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/google/android/material/picker/TimePicker;->mMode:I

    return p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getPmView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public is24HourView()Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->is24Hour()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isPickerModeClockEnabled()Z
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    if-eqz v0, :cond_0

    .line 273
    check-cast p0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->isRadialPickerModeEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 312
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 313
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 314
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 307
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0, v0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePicker;->setHour(I)V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePicker;->setMinute(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 261
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 2

    .line 149
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setIs24Hour(Z)V

    return-void
.end method

.method public setMinute(I)V
    .locals 2

    .line 169
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-static {p1, v0, v1}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public setSoftInputFocus()V
    .locals 1

    .line 279
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    if-eqz v0, :cond_0

    .line 280
    check-cast p0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setInputPickerFocus()V

    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker;->mWindow:Landroid/view/Window;

    .line 266
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    if-eqz v0, :cond_0

    .line 267
    check-cast p0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setWindow(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public validateInput()Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker;->mDelegate:Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->validateInput()Z

    move-result p0

    return p0
.end method
