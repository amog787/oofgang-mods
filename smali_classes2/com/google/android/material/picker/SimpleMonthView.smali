.class Lcom/google/android/material/picker/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;,
        Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mDisplayWidth:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mInitColor:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 69
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 70
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 72
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    .line 108
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    .line 114
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    const/4 p3, 0x1

    .line 117
    iput p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    .line 129
    iput p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayStart:I

    const/16 p4, 0x1f

    .line 132
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayEnd:I

    .line 139
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 140
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p2, 0x0

    .line 141
    iput-boolean p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 161
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 163
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_month_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredMonthHeight:I

    .line 164
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_of_week_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 165
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayHeight:I

    .line 166
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredCellWidth:I

    .line 167
    sget p2, Lcom/google/android/material/R$dimen;->date_picker_day_selector_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 171
    new-instance p2, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/google/android/material/picker/SimpleMonthView;Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    .line 172
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 173
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 175
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 176
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 178
    iget-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 180
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateMonthYearLabel()V

    .line 181
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->initConfig()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/SimpleMonthView;II)I
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/SimpleMonthView;I)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/SimpleMonthView;I)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/SimpleMonthView;I)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/SimpleMonthView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 224
    sget p2, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 226
    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 229
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 229
    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    sget p2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 234
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 235
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 695
    iget-object v2, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 696
    iget v3, v0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 697
    iget v4, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 698
    iget v5, v0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 701
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 702
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v3, v7

    .line 703
    iget v7, v0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    const/4 v11, 0x7

    if-eqz v7, :cond_2

    .line 707
    iget v12, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    if-ne v12, v10, :cond_1

    .line 708
    iput v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    move v12, v10

    goto :goto_1

    :cond_1
    sub-int/2addr v12, v10

    .line 711
    iput v12, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    :cond_2
    move v12, v9

    .line 716
    :goto_1
    iget v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    if-le v13, v10, :cond_5

    move v13, v10

    .line 717
    :goto_2
    iget v14, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    sub-int/2addr v14, v10

    if-gt v13, v14, :cond_5

    .line 718
    div-int/lit8 v14, v5, 0x2

    add-int/lit8 v15, v13, -0x1

    mul-int/2addr v15, v5

    add-int/2addr v14, v15

    .line 720
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 721
    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int v14, v15, v14

    .line 725
    :cond_3
    iget-object v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mContext:Landroid/content/Context;

    sget v8, Lcom/google/android/material/R$color;->op_control_text_color_disable_default:I

    invoke-virtual {v15, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 726
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 727
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 728
    iget v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    if-nez v8, :cond_4

    const/16 v8, 0xb

    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    sub-int/2addr v15, v10

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, -0x1

    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    :goto_3
    invoke-static {v8, v15}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v8

    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    sub-int/2addr v8, v15

    add-int/2addr v8, v13

    add-int/2addr v8, v10

    .line 730
    iget-object v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v17, v12

    int-to-long v11, v8

    invoke-virtual {v15, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    int-to-float v11, v14

    int-to-float v12, v3

    sub-float/2addr v12, v6

    invoke-virtual {v1, v8, v11, v12, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v17

    const/4 v8, 0x2

    const/4 v11, 0x7

    goto :goto_2

    :cond_5
    move/from16 v17, v12

    .line 733
    iget v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    iget v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    invoke-static {v8, v11}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x2a

    iget v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    sub-int/2addr v8, v11

    add-int/2addr v8, v10

    mul-int/lit8 v11, v4, 0x4

    add-int/2addr v11, v3

    const/4 v12, 0x7

    if-le v8, v12, :cond_6

    move v12, v9

    goto :goto_4

    :cond_6
    move v12, v4

    :goto_4
    add-int/2addr v11, v12

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/picker/SimpleMonthView;->findEndDayOffset()I

    move-result v12

    move v13, v10

    :goto_5
    if-gt v13, v8, :cond_9

    .line 737
    div-int/lit8 v14, v5, 0x2

    mul-int v15, v5, v12

    add-int/2addr v14, v15

    .line 739
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 740
    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int v14, v15, v14

    .line 744
    :cond_7
    iget-object v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mContext:Landroid/content/Context;

    sget v10, Lcom/google/android/material/R$color;->op_control_text_color_disable_default:I

    invoke-virtual {v15, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 745
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 746
    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 747
    iget-object v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v18, v8

    int-to-long v8, v13

    invoke-virtual {v10, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v14

    int-to-float v10, v11

    sub-float/2addr v10, v6

    invoke-virtual {v1, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x7

    if-ne v12, v8, :cond_8

    add-int/2addr v11, v4

    const/4 v12, 0x0

    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v18

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x7

    if-eqz v7, :cond_b

    .line 756
    iget v7, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    if-ne v7, v8, :cond_a

    if-eqz v17, :cond_a

    const/4 v7, 0x1

    .line 757
    iput v7, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    goto :goto_6

    :cond_a
    const/4 v7, 0x1

    .line 759
    iget v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    .line 762
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v7

    move v8, v7

    const/4 v7, 0x1

    :goto_7
    iget v9, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-gt v7, v9, :cond_17

    mul-int v9, v5, v8

    const/4 v10, 0x2

    .line 763
    div-int/lit8 v11, v5, 0x2

    add-int/2addr v9, v11

    .line 765
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 766
    iget v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int v9, v10, v9

    .line 773
    :cond_c
    invoke-direct {v0, v7}, Lcom/google/android/material/picker/SimpleMonthView;->isDayEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v11, 0x8

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    .line 778
    :goto_8
    iget v12, v0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    if-ne v12, v7, :cond_e

    const/4 v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    .line 779
    :goto_9
    iget v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-ne v13, v7, :cond_f

    const/4 v13, 0x1

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    :goto_a
    if-eqz v12, :cond_11

    or-int/lit8 v11, v11, 0x20

    if-eqz v13, :cond_10

    .line 784
    iget-object v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_b

    :cond_10
    iget-object v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_b
    int-to-float v13, v9

    int-to-float v14, v3

    .line 786
    iget v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v1, v13, v14, v15, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_11
    const/16 v16, 0x2

    if-eqz v13, :cond_12

    or-int/lit8 v11, v11, 0x10

    if-eqz v10, :cond_12

    int-to-float v10, v9

    int-to-float v13, v3

    .line 792
    iget v14, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    iget-object v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 797
    :cond_12
    :goto_c
    iget v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    if-ne v10, v7, :cond_13

    const/4 v15, 0x1

    goto :goto_d

    :cond_13
    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_15

    if-nez v12, :cond_15

    .line 800
    invoke-static {v11}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v10

    .line 801
    iget-object v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 802
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->paint:Landroid/graphics/Paint;

    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/google/android/material/R$color;->op_control_icon_color_inactive_default:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v9

    int-to-float v12, v3

    .line 804
    iget v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    const/4 v14, 0x2

    div-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/google/android/material/picker/SimpleMonthView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 805
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v14, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDisplayWidth:I

    if-ge v13, v14, :cond_14

    .line 807
    iget-object v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/android/material/R$color;->op_control_bg_color_popup_default:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e

    .line 810
    :cond_14
    iget-object v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/android/material/R$color;->op_control_bg_color_default:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    :goto_e
    iget-object v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->paint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 813
    iget v13, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    const/4 v14, 0x2

    div-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/4 v14, 0x1

    invoke-static {v15, v14}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v15

    sub-float/2addr v13, v15

    iget-object v15, v0, Lcom/google/android/material/picker/SimpleMonthView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v13, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v12, 0x0

    goto :goto_f

    :cond_15
    const/4 v14, 0x1

    .line 815
    invoke-static {v11}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v10

    .line 816
    iget-object v11, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 817
    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 819
    :goto_f
    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 821
    iget-object v10, v0, Lcom/google/android/material/picker/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v12, v7

    invoke-virtual {v10, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    int-to-float v9, v9

    int-to-float v11, v3

    sub-float/2addr v11, v6

    invoke-virtual {v1, v10, v9, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x7

    if-ne v8, v9, :cond_16

    add-int/2addr v3, v4

    const/4 v8, 0x0

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_17
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 8

    .line 668
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 669
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    .line 670
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    .line 671
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 674
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 675
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1

    mul-int v5, v3, v2

    .line 678
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    .line 680
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 681
    iget v6, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v6, v5

    .line 686
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v6, v6, v2

    int-to-float v5, v5

    int-to-float v7, v1

    sub-float/2addr v7, v4

    .line 687
    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 4

    .line 654
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 657
    iget-object v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 658
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 660
    iget-object v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .line 616
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 619
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 620
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    return-void

    .line 623
    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 624
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 627
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 589
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    if-nez v1, :cond_1

    return v0

    .line 593
    :cond_1
    div-int/2addr p1, v1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 594
    invoke-static {p1, v0, v1}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    .line 595
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    rsub-int/lit8 p0, p1, 0x7

    add-int/lit8 p1, p0, -0x1

    :cond_2
    return p1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 556
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 558
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 559
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 560
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 563
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    .line 564
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    sub-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    .line 568
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 569
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v0, p0

    .line 570
    div-int/lit8 p0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-int/2addr p0, v0

    .line 572
    invoke-static {p1, v1, p0}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private findDayOffset()I
    .locals 2

    .line 1047
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    sub-int v1, v0, p0

    if-ge v0, p0, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    return v1
.end method

.method private findEndDayOffset()I
    .locals 2

    .line 833
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    invoke-static {v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    .line 834
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 p0, v0, 0x2a

    const/4 v0, 0x7

    if-le p0, v0, :cond_0

    add-int/lit8 p0, p0, -0xe

    .line 837
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_0
    sub-int/2addr p0, v0

    .line 839
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private getDayAtLocation(II)I
    .locals 3

    .line 1064
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, -0x64

    if-ltz p1, :cond_3

    .line 1065
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    if-lt p2, v1, :cond_3

    .line 1071
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedHeight:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    .line 1077
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    sub-int p1, v0, p1

    :cond_2
    sub-int/2addr p2, v1

    .line 1083
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    div-int/2addr p2, v0

    mul-int/lit8 p1, p1, 0x7

    .line 1084
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr p1, v0

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 1086
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private static getDaysInMonth(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 969
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 967
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

.method private initConfig()V
    .locals 1

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDisplayWidth:I

    return-void
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 276
    sget v0, Lcom/google/android/material/R$string;->date_picker_month_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    sget v1, Lcom/google/android/material/R$string;->date_picker_day_of_week_typeface:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    sget v2, Lcom/google/android/material/R$string;->date_picker_day_typeface:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    sget v3, Lcom/google/android/material/R$dimen;->date_picker_month_text_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 282
    sget v4, Lcom/google/android/material/R$dimen;->date_picker_day_of_week_text_size:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 284
    sget v5, Lcom/google/android/material/R$dimen;->date_picker_day_text_size:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 287
    iget-object v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 288
    iget-object v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 289
    iget-object v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 290
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 294
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 295
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 296
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 300
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 306
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 309
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 310
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 311
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 312
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1

    .line 844
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 0

    .line 631
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    .line 632
    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLastDayOfWeek(I)Z
    .locals 0

    .line 636
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    .line 637
    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidDayOfMonth(I)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 848
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moveOneDay(Z)Z
    .locals 2

    .line 493
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 496
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v0

    .line 497
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 501
    :cond_0
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 502
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 6

    .line 1139
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x0

    if-gtz p1, :cond_1

    .line 1142
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    if-lez v3, :cond_0

    .line 1143
    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v3, v1

    invoke-static {v3, v4}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 1145
    :cond_0
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 1147
    :cond_1
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    if-le p1, v3, :cond_3

    .line 1148
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2

    .line 1149
    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v3, v4}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 1151
    :cond_2
    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v0, v5, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 1154
    :cond_3
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/Calendar;->set(III)V

    .line 1156
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x76c

    if-le v3, v4, :cond_5

    .line 1157
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x801

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 1160
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    invoke-interface {v2, p0, v0}, Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/google/android/material/picker/SimpleMonthView;Ljava/util/Calendar;)V

    goto :goto_2

    :cond_5
    :goto_1
    return v2

    .line 1164
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v1
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 3

    .line 974
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    .line 975
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 6

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0x32

    .line 204
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 207
    iget-object v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    rem-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 6

    .line 1101
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 1105
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr p1, v1

    .line 1108
    rem-int/lit8 v1, p1, 0x7

    .line 1109
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 1111
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    sub-int/2addr v3, v1

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 1118
    :goto_0
    div-int/lit8 p1, p1, 0x7

    .line 1119
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 1120
    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    iget v5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v4, v5

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v4

    mul-int/2addr p1, v1

    add-int/2addr p0, p1

    add-int/2addr v2, v3

    add-int/2addr v1, p0

    .line 1123
    invoke-virtual {p2, v3, p0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getCellWidth()I
    .locals 0

    .line 248
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    return p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 601
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 602
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 604
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    return p0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    .line 644
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    .line 650
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1188
    iget-boolean p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez p1, :cond_0

    .line 1190
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p1, -0x1

    .line 1191
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 1192
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 516
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 529
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x7

    .line 531
    :cond_1
    iput v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 519
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 520
    :goto_0
    iput v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 535
    :cond_4
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 536
    iget v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v0

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    if-le v1, v3, :cond_5

    add-int/lit8 v1, v1, -0x7

    .line 538
    :cond_5
    iput v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 524
    :cond_6
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    .line 525
    iget v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 542
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 545
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 425
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 432
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto/16 :goto_2

    .line 427
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto :goto_2

    .line 446
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    .line 448
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    add-int/2addr v0, v1

    .line 449
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 437
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 438
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->ensureFocusedDay()V

    .line 439
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-le v0, v1, :cond_6

    sub-int/2addr v0, v1

    .line 440
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    :goto_0
    move v2, v3

    goto :goto_2

    .line 456
    :cond_0
    :pswitch_4
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 457
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/SimpleMonthView;->onDayClicked(I)Z

    return v3

    .line 463
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    .line 473
    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 475
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    .line 477
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 485
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 488
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1006
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 1007
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 1008
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    .line 1009
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, p3

    sub-int/2addr p5, v0

    sub-int/2addr p4, p1

    sub-int/2addr p5, p2

    .line 1015
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    if-eq p4, v1, :cond_2

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedHeight:I

    if-eq p5, v1, :cond_2

    if-ltz p4, :cond_2

    if-gez p5, :cond_1

    goto :goto_0

    .line 1021
    :cond_1
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    .line 1022
    iput p5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedHeight:I

    .line 1026
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    int-to-float p2, p5

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 1028
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 1029
    iget p5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 p5, p5, 0x7

    .line 1030
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthHeight:I

    .line 1031
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekHeight:I

    .line 1032
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    .line 1033
    iput p5, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCellWidth:I

    .line 1037
    div-int/lit8 p5, p5, 0x2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 1038
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHeight:I

    div-int/lit8 p1, p1, 0x2

    .line 1039
    iget p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDaySelectorRadius:I

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorRadius:I

    .line 1043
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 980
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 982
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 983
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 984
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 985
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 986
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 987
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1170
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1174
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1176
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 1182
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 992
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 994
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result p1

    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->onDayClicked(I)Z

    :cond_1
    const/4 p1, -0x1

    .line 409
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 410
    iput-boolean v2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 390
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    .line 391
    iput-boolean v3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 392
    iget v1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    if-eq v1, v0, :cond_3

    .line 393
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mHighlightedDay:I

    .line 394
    iput v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    const/16 p0, -0x64

    if-ne v0, p0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x18

    .line 366
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 367
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 344
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x28

    .line 356
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 357
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 880
    invoke-static {p1}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 883
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    .line 886
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 889
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 890
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 0

    .line 911
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    .line 913
    invoke-static {p2}, Lcom/google/android/material/picker/SimpleMonthView;->isValidMonth(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 914
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    .line 916
    :cond_0
    iput p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    .line 918
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    iget p3, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 919
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 920
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 921
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDayOfWeekStart:I

    .line 923
    invoke-static {p4}, Lcom/google/android/material/picker/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 924
    iput p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 926
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mWeekStart:I

    .line 930
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, -0x1

    .line 931
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    .line 932
    iget p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonth:I

    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mYear:I

    invoke-static {p2, p4}, Lcom/google/android/material/picker/SimpleMonthView;->getDaysInMonth(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    const/4 p2, 0x0

    .line 933
    :cond_2
    :goto_1
    iget p4, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    if-ge p2, p4, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 935
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/picker/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 936
    iput p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mToday:I

    goto :goto_1

    .line 940
    :cond_3
    invoke-static {p5, p3, p4}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayStart:I

    .line 941
    iget p2, p0, Lcom/google/android/material/picker/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, p1, p2}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mEnabledDayEnd:I

    .line 943
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateMonthYearLabel()V

    .line 944
    invoke-direct {p0}, Lcom/google/android/material/picker/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 947
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 948
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthTextAlpha(I)V
    .locals 8

    .line 317
    iget v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mInitColor:I

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 320
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 321
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr p1, v1

    div-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 325
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v4, v2, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x101009e

    aput v7, v6, v3

    aput-object v6, v4, v3

    new-array v6, v3, [I

    aput-object v6, v4, v5

    new-array v2, v2, [I

    .line 329
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v2, v3

    aput v0, v2, v5

    invoke-direct {p1, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 331
    invoke-virtual {p1, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 332
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 253
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mInitColor:I

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 338
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 339
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    .line 866
    iput p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mActivatedDay:I

    .line 869
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView;->mTouchHelper:Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 870
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
