.class Lcom/google/android/material/picker/TimePickerClockDelegate;
.super Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;,
        Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

.field private mDuration:I

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderOffset:I

.field private mHeaderPositionY:I

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/google/android/material/picker/NumericTextView;

.field private mInputBlockPositionY:I

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mIsToggleTimeMode:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/google/android/material/picker/NumericTextView;

.field private final mOnValueSelectedListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

.field private final mPickerModeButtonLayout:Landroid/widget/LinearLayout;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

.field private mRadialTimeViewAlpha:F

.field private mRadialTimeViewScale:F

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

.field private final mTimeHeaderLayout:Landroid/view/View;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    .line 78
    sput-object v0, Lcom/google/android/material/picker/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsEnabled:Z

    .line 1168
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$7;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    .line 1202
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$8;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$8;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    .line 1222
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$9;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$9;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    .line 1258
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$10;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$10;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1265
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$11;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$11;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1272
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$12;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$12;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1294
    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$13;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$13;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 136
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 140
    iget-object v3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 142
    sget v4, Lcom/google/android/material/R$string;->select_hours:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 143
    sget v4, Lcom/google/android/material/R$string;->select_minutes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 145
    sget v3, Lcom/google/android/material/R$styleable;->TimePicker_internalLayout:I

    sget v4, Lcom/google/android/material/R$layout;->op_time_picker_material:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 147
    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 149
    sget v3, Lcom/google/android/material/R$id;->time_header:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    .line 150
    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    sget v3, Lcom/google/android/material/R$id;->hours:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/picker/NumericTextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    .line 153
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    invoke-virtual {v3, v4}, Lcom/google/android/material/picker/NumericTextView;->setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;)V

    .line 156
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;

    sget v6, Lcom/google/android/material/R$string;->select_hours:I

    invoke-direct {v4, p2, v6}, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    sget v3, Lcom/google/android/material/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 159
    sget v3, Lcom/google/android/material/R$id;->separator_shape:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    sget v3, Lcom/google/android/material/R$id;->minutes:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/picker/NumericTextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    .line 161
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    invoke-virtual {v3, v4}, Lcom/google/android/material/picker/NumericTextView;->setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;)V

    .line 164
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;

    sget v6, Lcom/google/android/material/R$string;->select_minutes:I

    invoke-direct {v4, p2, v6}, Lcom/google/android/material/picker/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 166
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v2, v4}, Lcom/google/android/material/picker/NumericTextView;->setRange(II)V

    .line 167
    sget v3, Lcom/google/android/material/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    .line 168
    sget v3, Lcom/google/android/material/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 170
    sget v3, Lcom/google/android/material/R$id;->ampm_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 171
    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v4, v5}, Lcom/google/android/material/picker/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    sget v3, Lcom/google/android/material/R$id;->time_header_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTimeHeaderLayout:Landroid/view/View;

    .line 174
    invoke-static {p2}, Lcom/google/android/material/picker/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v6, Lcom/google/android/material/R$id;->am_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 176
    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/google/android/material/picker/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/google/android/material/picker/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 180
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v6, Lcom/google/android/material/R$id;->pm_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 181
    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 191
    sget v3, Lcom/google/android/material/R$styleable;->TimePicker_android_headerTimeTextAppearance:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v4, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/google/android/material/picker/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 198
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    :cond_0
    sget v3, Lcom/google/android/material/R$styleable;->TimePicker_headerTextColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 205
    sget v4, Lcom/google/android/material/R$id;->input_header:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 208
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 209
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 212
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/material/R$integer;->op_control_time_600:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    const/4 p2, 0x0

    .line 226
    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 227
    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 229
    sget p2, Lcom/google/android/material/R$id;->radial_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/RadialTimePickerView;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    .line 230
    invoke-virtual {p2, p3, p4, p5}, Lcom/google/android/material/picker/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 231
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setOnValueSelectedListener(Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;)V

    .line 233
    sget p2, Lcom/google/android/material/R$id;->input_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/TextInputTimePickerView;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    .line 234
    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/TextInputTimePickerView;->setListener(Lcom/google/android/material/picker/TextInputTimePickerView$OnValueTypedListener;)V

    .line 236
    sget p2, Lcom/google/android/material/R$id;->toggle_mode:I

    .line 237
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 238
    sget p2, Lcom/google/android/material/R$id;->toggle_mode_layout:I

    .line 239
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPickerModeButtonLayout:Landroid/widget/LinearLayout;

    .line 240
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/google/android/material/picker/TimePickerClockDelegate$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$1;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 253
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHourFormat()V

    .line 256
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    .line 257
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 258
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 259
    iget-boolean p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->initialize(IIZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPickerModeButtonLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/picker/TimePickerClockDelegate;IIZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/material/picker/TimePickerClockDelegate;I)I
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/material/picker/TimePickerClockDelegate;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->showSoftInput()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/RadialTimePickerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    return-void
.end method

.method private animationInInputTimeField()V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 431
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 436
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 439
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 440
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 441
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$5;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$4;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animationInInputTimeFieldBefore()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 341
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 342
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mInputBlockPositionY:I

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderPositionY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    .line 344
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$2;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animationOutInputTimeField()V
    .locals 5

    .line 519
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    .line 520
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 523
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 525
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->showLabels(Z)V

    .line 526
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v1

    .line 531
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 532
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$6;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 537
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 575
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animationOutInputTimeFieldBefore()V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 383
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->showLabels(Z)V

    .line 384
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v1

    .line 389
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 390
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$3;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    .line 394
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 596
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 597
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 598
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p0

    return p0
.end method

.method private getLocalizedHour(I)I
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    .line 1039
    rem-int/lit8 p1, p1, 0xc

    .line 1042
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 1044
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    :goto_0
    move p1, p0

    :cond_2
    return p1
.end method

.method private hideSoftInput()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initialize(IIZI)V
    .locals 0

    .line 713
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 714
    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    .line 715
    iput-boolean p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    .line 716
    invoke-direct {p0, p4}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5

    .line 1097
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1099
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1100
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 1102
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 644
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    .line 644
    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 1001
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1002
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1

    .line 1148
    invoke-static {}, Lcom/oneplus/common/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 1151
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 2

    .line 1156
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 1158
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setAmOrPm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 1160
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 1161
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    if-eqz p1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 4

    .line 759
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_2

    .line 760
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eqz p1, :cond_1

    .line 763
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 764
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 765
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_space6:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 766
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x14

    .line 767
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 768
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 771
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 773
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 774
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    .line 1128
    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1132
    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1136
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1137
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    if-ne p1, v0, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setActivated(Z)V

    if-nez p1, :cond_4

    .line 1139
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 1140
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    goto :goto_2

    .line 1142
    :cond_4
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 1143
    sget p1, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    :goto_2
    return-void
.end method

.method private setHourInternal(IIZ)V
    .locals 2

    .line 808
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    return-void

    .line 812
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 813
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 814
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderAmPm()V

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    .line 817
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHour(I)V

    .line 818
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    const/16 v1, 0xc

    if-ge p1, v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setAmOrPm(I)Z

    :cond_2
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    .line 821
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 824
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 825
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private setInputAmPmAtStart(Z)V
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setAmPmAtStart(Z)V

    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 1

    .line 854
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    .line 858
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    const/4 v0, 0x1

    .line 859
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    if-eq p2, v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    .line 865
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 868
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 869
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private showSoftInput()V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getHourView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 6

    .line 267
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderPositionY:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 272
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 273
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    sget v3, Lcom/google/android/material/R$id;->hours:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 274
    aget v3, v0, v1

    iput v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderPositionY:I

    .line 275
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    .line 276
    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$id;->input_hour:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v2

    .line 277
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderOffset:I

    if-nez v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHeaderOffset:I

    .line 281
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 282
    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mInputBlockPositionY:I

    .line 284
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 285
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 287
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->animationInInputTimeField()V

    goto :goto_1

    .line 289
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->animationInInputTimeFieldBefore()V

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/google/android/material/R$drawable;->op_btn_clock_material:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 292
    iput-boolean v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->animationOutInputTimeField()V

    goto :goto_2

    .line 297
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->animationOutInputTimeFieldBefore()V

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v2, Lcom/google/android/material/R$drawable;->op_btn_keyboard_key_material:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 300
    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    :goto_3
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1115
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 1116
    iput-boolean p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 1

    .line 1011
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1016
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 1017
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1018
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-ne p1, v1, :cond_1

    move v0, v1

    .line 1021
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 1022
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1023
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 2

    .line 741
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 742
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 747
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    .line 748
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTimeHeaderPosition(Z)V

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setInputAmPmAtStart(Z)V

    .line 750
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    :goto_1
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 1

    .line 1051
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p1

    .line 1052
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    .line 1055
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    .line 1063
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [C

    .line 1080
    fill-array-data v1, :array_0

    .line 1081
    invoke-static {v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, ":"

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 1093
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 9

    .line 608
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x48

    const/16 v5, 0x4b

    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    .line 615
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v6

    if-ge v3, v1, :cond_3

    .line 618
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    move v7, v0

    .line 625
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_6

    :cond_5
    move v2, v6

    .line 626
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/lit8 v0, v2, 0x1

    .line 630
    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    goto :goto_4

    :cond_7
    const/16 v1, 0xb

    :goto_4
    add-int/2addr v1, v0

    .line 631
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/picker/NumericTextView;->setRange(II)V

    .line 632
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 635
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 636
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/google/android/material/picker/TimePickerCompat24;->setHourFormat(Lcom/google/android/material/picker/TextInputTimePickerView;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 639
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 737
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    .line 731
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/picker/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    return-void
.end method

.method private updateTimeHeaderPosition(Z)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 786
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    .line 788
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTimeHeaderLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 789
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 790
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->op_control_margin_space6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x14

    .line 791
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 792
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTimeHeaderLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTimeHeaderLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 795
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTimeHeaderLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private updateUI(I)V
    .locals 2

    .line 720
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 721
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 722
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 723
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 724
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 725
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 727
    iget-object p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAmView()Landroid/view/View;
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHour()I
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 834
    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    return v0

    .line 838
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getAmOrPm()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 839
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 841
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    .line 977
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public is24Hour()Z
    .locals 0

    .line 906
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 921
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsEnabled:Z

    return p0
.end method

.method public isRadialPickerModeEnabled()Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 938
    instance-of v0, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 939
    check-cast p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 940
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->initialize(IIZI)V

    .line 941
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    .line 932
    new-instance v6, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 933
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mHourView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 912
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mMinuteView:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 913
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 914
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 915
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 916
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 804
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method public setInputPickerFocus()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getHourView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getHourView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getMinuteView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getMinuteView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setIs24Hour(Z)V

    .line 890
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    .line 891
    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mIs24Hour:Z

    .line 892
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mCurrentHour:I

    .line 894
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateHourFormat()V

    .line 895
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->updateUI(I)V

    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x0

    .line 850
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public validateInput()Z
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->mTextInputPickerView:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->validateInput()Z

    move-result p0

    return p0
.end method
