.class Lcom/google/android/material/picker/TimePickerSpinnerDelegate;
.super Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 60
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 62
    sget p4, Lcom/google/android/material/R$styleable;->TimePicker_legacyLayout:I

    sget p5, Lcom/google/android/material/R$layout;->op_time_picker_legacy_material:I

    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 64
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    iget-object p3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 67
    iget-object p5, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x0

    .line 68
    invoke-virtual {p3, p4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 71
    sget p3, Lcom/google/android/material/R$id;->hour:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/NumberPicker;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    .line 72
    new-instance p5, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;

    invoke-direct {p5, p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$1;-><init>(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, p5}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;)V

    .line 86
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    sget p5, Lcom/google/android/material/R$id;->numberpicker_input:I

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 p5, 0x5

    .line 87
    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 90
    iget-object p3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    sget v1, Lcom/google/android/material/R$id;->divider:I

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setDividerText()V

    .line 96
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    sget v1, Lcom/google/android/material/R$id;->minute:I

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/NumberPicker;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    .line 97
    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 98
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {p3, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    .line 99
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {p3, v1, v2}, Lcom/google/android/material/picker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 100
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {}, Lcom/google/android/material/picker/NumberPicker;->getTwoDigitFormatter()Lcom/google/android/material/picker/NumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/material/picker/NumberPicker;->setFormatter(Lcom/google/android/material/picker/NumberPicker$Formatter;)V

    .line 101
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    new-instance v1, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$2;-><init>(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, v1}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;)V

    .line 125
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    sget v1, Lcom/google/android/material/R$id;->numberpicker_input:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 126
    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 129
    invoke-static {p2}, Lcom/google/android/material/picker/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 132
    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    sget p3, Lcom/google/android/material/R$id;->amPm:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 133
    instance-of p3, p2, Landroid/widget/Button;

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    .line 134
    iput-object p5, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    .line 135
    iput-object p5, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 136
    move-object p3, p2

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 137
    new-instance p5, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$3;

    invoke-direct {p5, p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$3;-><init>(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_1
    iput-object p5, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 148
    move-object p3, p2

    check-cast p3, Lcom/google/android/material/picker/NumberPicker;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    .line 149
    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 150
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p3, v0}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    .line 151
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    iget-object p5, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/google/android/material/picker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 152
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    new-instance p5, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;

    invoke-direct {p5, p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate$4;-><init>(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V

    invoke-virtual {p3, p5}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;)V

    .line 162
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    sget p5, Lcom/google/android/material/R$id;->numberpicker_input:I

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 p5, 0x6

    .line 163
    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 168
    sget p3, Lcom/google/android/material/R$id;->timePickerLayout:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 175
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    .line 176
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 178
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 187
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 188
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 191
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    .line 192
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setHour(I)V

    .line 193
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 196
    invoke-virtual {p0, p4}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 201
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 202
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/TimePickerSpinnerDelegate;)Lcom/google/android/material/picker/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    return-object p0
.end method

.method private getHourFormatData()V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 215
    iput-boolean v2, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :goto_1
    if-ge v2, v1, :cond_3

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    :cond_2
    :goto_2
    iput-char v3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourFormat:C

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_3

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    .line 224
    iput-boolean v4, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 1

    .line 232
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    const-string v0, "hm"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "a"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 471
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 473
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    .line 472
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getMinute()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    .line 282
    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_2

    move p1, v0

    .line 292
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    .line 296
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method private setDividerText()V
    .locals 4

    .line 247
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x68

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    :cond_1
    if-ne v1, v2, :cond_2

    const-string v0, ":"

    goto :goto_1

    :cond_2
    const/16 v3, 0x6d

    add-int/lit8 v1, v1, 0x1

    .line 259
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 450
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 457
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 458
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {v1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    .line 460
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 4

    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 483
    iget-char v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 485
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 488
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 492
    :cond_1
    iget-char v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    .line 493
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 494
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 497
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/google/android/material/picker/NumberPicker;->getTwoDigitFormatter()Lcom/google/android/material/picker/NumberPicker$Formatter;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/material/picker/NumberPicker;->setFormatter(Lcom/google/android/material/picker/NumberPicker$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 438
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 441
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 444
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMinuteControl()V
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAmView()Landroid/view/View;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getHour()I
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v0

    .line 303
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 305
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz p0, :cond_1

    .line 306
    rem-int/lit8 v0, v0, 0xc

    return v0

    .line 308
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public is24Hour()Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 380
    instance-of v0, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 382
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setHour(I)V

    .line 383
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setMinute(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3

    .line 375
    new-instance v0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZ)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/google/android/material/picker/NumberPicker;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHour()I

    move-result v0

    .line 334
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 335
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 336
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateHourControl()V

    const/4 p1, 0x0

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 340
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    .line 318
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public validateInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
