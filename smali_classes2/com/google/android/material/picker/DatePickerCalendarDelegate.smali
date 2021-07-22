.class Lcom/google/android/material/picker/DatePickerCalendarDelegate;
.super Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderLunarMonthDay:Landroid/widget/TextView;

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private final mHeaderMonthSelection:Landroid/view/View;

.field private mHeaderMonthSelectionHeight:I

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mHeaderYearSelection:Landroid/view/View;

.field private mHeaderYearSelectionHeight:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mSelectionLayout:Landroid/widget/LinearLayout;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Lcom/google/android/material/picker/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    .line 62
    sput-object v0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 659
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 660
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 661
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 87
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 229
    new-instance p2, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$1;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;

    .line 251
    new-instance p2, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$2;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

    .line 280
    new-instance p2, Lcom/google/android/material/picker/DatePickerCalendarDelegate$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$3;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 100
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 101
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 102
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 103
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 104
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 106
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/16 v0, 0x76c

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Ljava/util/Calendar;->set(III)V

    .line 107
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v0, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 109
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 110
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->DatePicker:[I

    invoke-virtual {v0, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 112
    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string p5, "layout_inflater"

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/LayoutInflater;

    .line 114
    sget p5, Lcom/google/android/material/R$styleable;->DatePicker_internalLayout:I

    sget v0, Lcom/google/android/material/R$layout;->op_date_picker_material:I

    invoke-virtual {p3, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    .line 118
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p4, p5, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 120
    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget p5, Lcom/google/android/material/R$id;->date_picker_header:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 124
    sget p5, Lcom/google/android/material/R$id;->date_picker_header_year:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 125
    sget p5, Lcom/google/android/material/R$id;->date_picker_year_selection:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelection:Landroid/view/View;

    .line 126
    sget p5, Lcom/google/android/material/R$id;->date_picker_selection_layout:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectionLayout:Landroid/widget/LinearLayout;

    .line 127
    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget p5, Lcom/google/android/material/R$id;->date_picker_header_date:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 129
    sget p5, Lcom/google/android/material/R$id;->date_picker_month_selection:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    .line 130
    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget p5, Lcom/google/android/material/R$id;->date_picker_header_lunar:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    .line 139
    sget p4, Lcom/google/android/material/R$styleable;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {p3, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_0

    .line 142
    iget-object p5, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {p5, v0, v2, p1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 144
    invoke-virtual {p4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 145
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    :cond_0
    sget p4, Lcom/google/android/material/R$styleable;->DatePicker_headerTextColor:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 153
    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget p4, Lcom/google/android/material/R$id;->animator:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ViewAnimator;

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 168
    sget p4, Lcom/google/android/material/R$id;->date_picker_day_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/DayPickerView;

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    .line 169
    iget p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/DayPickerView;->setFirstDayOfWeek(I)V

    .line 170
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->setMinDate(J)V

    .line 171
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->setMaxDate(J)V

    .line 172
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->setDate(J)V

    .line 173
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/DayPickerView;->setOnDaySelectedListener(Lcom/google/android/material/picker/DayPickerView$OnDaySelectedListener;)V

    .line 176
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget p4, Lcom/google/android/material/R$id;->date_picker_year_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/YearPickerView;

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    .line 177
    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p5, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 178
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/YearPickerView;->setYear(I)V

    .line 179
    iget-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/YearPickerView;->setOnYearSelectedListener(Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;)V

    .line 182
    sget p3, Lcom/google/android/material/R$string;->select_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 183
    sget p3, Lcom/google/android/material/R$string;->select_year:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 187
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/DatePickerCalendarDelegate;ZZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/DatePickerCalendarDelegate;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)Lcom/google/android/material/picker/YearPickerView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    return-object p0
.end method

.method private animatorToYearSelection(Z)V
    .locals 10

    .line 389
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    if-lez v0, :cond_3

    .line 390
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 391
    iget v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 392
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    aput v6, v4, v7

    if-eqz p1, :cond_1

    move v1, v5

    :cond_1
    const/4 v5, 0x1

    aput v1, v4, v5

    const-string v1, "scaleY"

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    new-array v4, v5, [F

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelection:Landroid/view/View;

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v6, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    iget v6, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    iget p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    sub-int/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p0, v6

    sub-float p0, p1, p0

    :goto_1
    aput p0, v4, v7

    const-string p0, "translationY"

    .line 395
    invoke-static {v2, p0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v8, 0x7d

    .line 398
    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 399
    sget-object p1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object v1, p1, v7

    aput-object p0, p1, v5

    .line 400
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 401
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method

.method public static getDaysInMonth(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 655
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 653
    :pswitch_1
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initSelectionParams()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelection:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    .line 203
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelection:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    iget v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelection:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    iget v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 208
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYearSelectionHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 209
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 210
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelectionHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 211
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthSelection:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 214
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private onCurrentDateChanged(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->updateLunarDate()V

    if-eqz p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 440
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-eqz p2, :cond_2

    .line 442
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 443
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 444
    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_1

    .line 445
    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-interface {v3, v4, v0, p2, v2}, Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V

    .line 447
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2

    .line 448
    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    invoke-interface {v3, v4, v0, p2, v2}, Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V

    .line 452
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3, v1}, Lcom/google/android/material/picker/DayPickerView;->setDate(JZ)V

    .line 453
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {p2, v0}, Lcom/google/android/material/picker/YearPickerView;->setYear(I)V

    .line 455
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    if-eqz p1, :cond_3

    .line 458
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->changeYearLayoutParams()V

    .line 361
    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 362
    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/google/android/material/picker/YearPickerView;->setYear(I)V

    .line 363
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    new-instance v3, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;

    invoke-direct {v3, p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;-><init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 371
    iget v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_1

    .line 372
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 374
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 375
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->animatorToYearSelection(Z)V

    .line 377
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 378
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/picker/DayPickerView;->setDate(J)V

    .line 347
    iget v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_3

    .line 348
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 350
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->animatorToYearSelection(Z)V

    .line 351
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 353
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 354
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private tryVibrate()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 666
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->isSupportZVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 668
    :try_start_0
    const-class v0, Landroid/os/VibrationEffect;

    const-string v1, "EFFECT_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 669
    const-class v1, Landroid/os/VibrationEffect;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 670
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 671
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 672
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    .line 673
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 674
    sget-object v1, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 676
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 679
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/google/android/material/picker/DatePicker;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method private updateLunarDate()V
    .locals 4

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "zh"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->solarToLunar(Ljava/util/Calendar;)Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;

    move-result-object v1

    const-string v2, "zh_CN"

    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 336
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "\u519c\u5386\uff1a"

    goto :goto_0

    :cond_0
    const-string v0, "\u8fb2\u66c6\uff1a"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->getYYMMDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 339
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderLunarMonthDay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public changeYearLayoutParams()V
    .locals 5

    .line 406
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->initSelectionParams()V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 552
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported by calendar-mode DatePicker"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCalendarViewShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 474
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 530
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    return v0

    .line 533
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMonth()I
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 464
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 420
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 421
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 423
    invoke-direct {p0, p1, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 425
    iput-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 577
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EMMMd"

    .line 303
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 305
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "y"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 602
    instance-of v0, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 603
    check-cast p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 606
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 607
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 608
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 610
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 612
    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v0

    .line 613
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 615
    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_0

    .line 618
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/picker/DayPickerView;->setPosition(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    .line 620
    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14

    .line 582
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 583
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 584
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 589
    iget v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v12, v0

    .line 596
    new-instance v0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 597
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v13, -0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 542
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 525
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 502
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x6

    .line 503
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 512
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/DayPickerView;->setMaxDate(J)V

    .line 513
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/picker/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 480
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x6

    .line 481
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 490
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mDayPickerView:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/DayPickerView;->setMinDate(J)V

    .line 491
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mYearPickerView:Lcom/google/android/material/picker/YearPickerView;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/picker/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    return-void
.end method

.method public updateDate(III)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 431
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 432
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 434
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method
