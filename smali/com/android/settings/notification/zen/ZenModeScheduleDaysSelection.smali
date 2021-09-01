.class public Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# instance fields
.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 7

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->zen_schedule_day_margin:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v2

    .line 48
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v4, p2, v1

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 54
    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v0

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move v1, v2

    .line 56
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 57
    aget v3, v0, v1

    .line 58
    sget v4, Lcom/android/settings/R$layout;->zen_schedule_rule_day:I

    invoke-virtual {p1, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x7

    .line 60
    invoke-virtual {p2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 61
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    new-instance v5, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;)[I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object p0

    return-object p0
.end method

.method private getDays()[I
    .locals 5

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 78
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    new-array v2, p0, [I

    :goto_2
    if-ge v1, p0, :cond_2

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    return-object v2
.end method

.method protected static getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 91
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x1

    if-le p0, v0, :cond_0

    move p0, v3

    .line 94
    :cond_0
    aput p0, v1, v2

    add-int/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 0

    return-void
.end method
