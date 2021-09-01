.class Lcom/google/android/material/picker/DayPickerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;,
        Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mCurrentViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/picker/SimpleMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/DayPickerPagerAdapter$1;-><init>(Lcom/google/android/material/picker/DayPickerPagerAdapter;)V

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput p2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mLayoutResId:I

    .line 57
    iput p3, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarViewId:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const p3, 0x101042c

    const/4 v0, 0x0

    aput p3, p2, v0

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/DayPickerPagerAdapter;)Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object p0
.end method

.method private getMonthForPosition(I)I
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    rem-int/lit8 p1, p1, 0xc

    return p1
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 223
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    .line 224
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    return v1
.end method

.method private getYearForPosition(I)I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xc

    .line 197
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 290
    check-cast p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    .line 291
    iget-object p3, p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCount:I

    return p0
.end method

.method public getCurrentView()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/picker/SimpleMonthView;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 298
    check-cast p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    .line 299
    iget p0, p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->position:I

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/google/android/material/picker/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 231
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 233
    iget v1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/SimpleMonthView;

    .line 234
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setOnDayClickListener(Lcom/google/android/material/picker/SimpleMonthView$OnDayClickListener;)V

    .line 235
    iget v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 236
    iget v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 237
    iget v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayTextAppearance(I)V

    .line 239
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 248
    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 249
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 253
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v4

    .line 254
    invoke-direct {p0, p2}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v5

    .line 257
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 258
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    move v7, v2

    .line 264
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 265
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_4
    move v9, v8

    .line 271
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 272
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x1f

    :goto_2
    move v8, v2

    .line 277
    iget v6, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move-object v2, v1

    move v3, v7

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 280
    new-instance v2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Lcom/google/android/material/picker/SimpleMonthView;)V

    .line 281
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 187
    check-cast p2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    .line 188
    iget-object p0, p2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 164
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 154
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 173
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3

    .line 84
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 87
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    .line 90
    invoke-virtual {v2, p1}, Lcom/google/android/material/picker/SimpleMonthView;->setFirstDayOfWeek(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 159
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/google/android/material/picker/DayPickerPagerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    add-int/lit8 p3, p2, -0x1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p1, p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p3, p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p3, p3, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p1, p1, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    iget-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 70
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 71
    iput v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mCount:I

    .line 74
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/SimpleMonthView;->setSelectedDay(I)V

    :cond_0
    if-ltz v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 130
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 131
    iget-object v0, v0, Lcom/google/android/material/picker/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->setSelectedDay(I)V

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    return-void
.end method
