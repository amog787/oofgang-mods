.class public Lcom/google/android/material/picker/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;,
        Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final COS_30:[F

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES_NUMBERS:[I

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I


# instance fields
.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mXCenter:I

.field private mYCenter:I

.field oval:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 91
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v1, v0, [I

    .line 92
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v1, v0, [I

    .line 93
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/16 v1, 0x169

    new-array v1, v1, [I

    .line 106
    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    new-array v1, v0, [F

    .line 109
    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->COS_30:[F

    new-array v1, v0, [F

    .line 110
    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->SIN_30:[F

    .line 121
    invoke-static {}, Lcom/google/android/material/picker/RadialTimePickerView;->preparePrefer30sMap()V

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 126
    sget-object v4, Lcom/google/android/material/picker/RadialTimePickerView;->COS_30:[F

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    .line 127
    sget-object v4, Lcom/google/android/material/picker/RadialTimePickerView;->SIN_30:[F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 337
    sget v0, Lcom/google/android/material/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 346
    const-class v0, F

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 148
    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Paint;

    .line 151
    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 152
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/graphics/Paint;

    .line 153
    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 154
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-array v4, v3, [Landroid/content/res/ColorStateList;

    .line 158
    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    new-array v4, v3, [I

    .line 159
    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    new-array v3, v3, [I

    .line 160
    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    new-array v3, v2, [I

    .line 162
    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextX:[[F

    new-array v3, v2, [I

    .line 163
    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextY:[[F

    new-array v0, v1, [F

    .line 165
    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextX:[F

    new-array v0, v1, [F

    .line 166
    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextY:[F

    new-array v0, v2, [I

    .line 168
    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    .line 172
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInputEnabled:Z

    .line 823
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    const/4 v3, 0x0

    .line 1002
    iput-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 348
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/material/picker/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 351
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x1010033

    invoke-virtual {p3, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 353
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mDisabledAlpha:F

    const-string p2, "sans-serif"

    .line 355
    invoke-static {p2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 357
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v3

    .line 358
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, v3

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 361
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v0

    .line 362
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, v0

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 365
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v3

    .line 368
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v0

    .line 371
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p2, p2, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 373
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v2

    .line 374
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p2, p2, v2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 375
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object p2, p2, v2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 380
    sget p3, Lcom/google/android/material/R$dimen;->timepicker_selector_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorRadius:I

    .line 381
    sget p3, Lcom/google/android/material/R$dimen;->timepicker_selector_stroke:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorStroke:I

    .line 382
    sget p3, Lcom/google/android/material/R$dimen;->timepicker_selector_dot_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorDotRadius:I

    .line 383
    sget p3, Lcom/google/android/material/R$dimen;->timepicker_center_dot_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCenterDotRadius:I

    .line 385
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    sget p4, Lcom/google/android/material/R$dimen;->timepicker_text_size_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v3

    .line 386
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    sget p4, Lcom/google/android/material/R$dimen;->timepicker_text_size_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v0

    .line 387
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    sget p4, Lcom/google/android/material/R$dimen;->timepicker_text_size_inner:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v2

    .line 389
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    sget p4, Lcom/google/android/material/R$dimen;->timepicker_text_inset_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v3

    .line 390
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    sget p4, Lcom/google/android/material/R$dimen;->timepicker_text_inset_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v0

    .line 391
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    sget p4, Lcom/google/android/material/R$dimen;->timepicker_text_inset_inner:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, p3, v2

    .line 393
    iput-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    const/4 p2, 0x0

    .line 394
    iput p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    .line 395
    iput-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    .line 396
    iput v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    .line 399
    new-instance p2, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Lcom/google/android/material/picker/RadialTimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    .line 400
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 407
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->initData()V

    .line 410
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    const/16 p3, 0xb

    .line 411
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 412
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 414
    invoke-direct {p0, p3, v3, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 415
    invoke-direct {p0, p2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 416
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "vibrator"

    .line 417
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mVibrator:Landroid/os/Vibrator;

    .line 420
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void

    :array_0
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xc
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/RadialTimePickerView;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/picker/RadialTimePickerView;)[I
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorRadius:I

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/picker/RadialTimePickerView;I)I
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getDegreesForHour(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/picker/RadialTimePickerView;I)I
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/RadialTimePickerView;FFZ)I
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(II)I
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->snapOnly30s(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/RadialTimePickerView;FF)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/RadialTimePickerView;IZ)I
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/RadialTimePickerView;I)I
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/RadialTimePickerView;I)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    return p0
.end method

.method private animatePicker(ZJ)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 726
    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    .line 728
    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 729
    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x0

    .line 730
    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const-string p1, "HoursToMinutes"

    .line 737
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 738
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 739
    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 740
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 0

    .line 923
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 924
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    add-float/2addr p4, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p4, p0

    sub-float/2addr p3, p4

    const/4 p0, 0x0

    :goto_0
    const/16 p4, 0xc

    if-ge p0, p4, :cond_0

    .line 927
    sget-object p4, Lcom/google/android/material/picker/RadialTimePickerView;->COS_30:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p2, p4

    aput p4, p5, p0

    .line 928
    sget-object p4, Lcom/google/android/material/picker/RadialTimePickerView;->SIN_30:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p3, p4

    aput p4, p6, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 11

    .line 892
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 895
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Lcom/google/android/material/picker/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 899
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 900
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    sub-int/2addr v0, v1

    .line 901
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v4, v1, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v6, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v3

    int-to-float v8, v0

    iget-object v9, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextX:[F

    iget-object v10, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v4 .. v10}, Lcom/google/android/material/picker/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 10

    .line 908
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 911
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, p0, v2

    invoke-static/range {v3 .. v9}, Lcom/google/android/material/picker/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 816
    iget p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float p2, p2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 3

    .line 753
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    .line 757
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-lez p3, :cond_0

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 762
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    .line 763
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 769
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    .line 770
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16

    move-object/from16 v13, p0

    .line 777
    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/material/picker/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 782
    iget-boolean v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    iget-object v5, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 783
    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v6, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/material/picker/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    :cond_2
    return-void
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    .line 790
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int p3, v0

    if-lez p3, :cond_0

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 795
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    .line 796
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 797
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 802
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    .line 803
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 804
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 13

    move-object v0, p0

    .line 809
    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v3, v1

    iget-object v4, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v5, v1, v2

    iget-object v6, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v7, v1, v2

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v8, v1, v2

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v9, v1, v2

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v1, v2

    move-object v1, p1

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/material/picker/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    .line 827
    iget-boolean v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    const/4 v3, 0x2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v8

    .line 828
    :goto_0
    iget-object v4, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    aget v4, v4, v2

    .line 829
    iget-object v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/2addr v2, v3

    aget v6, v5, v2

    .line 830
    aget v2, v5, v2

    rem-int/lit8 v2, v2, 0x1e

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 833
    :goto_1
    iget-object v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    .line 834
    iget-object v12, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aget v13, v12, v11

    .line 835
    aget v12, v12, v11

    rem-int/lit8 v12, v12, 0x1e

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 838
    :goto_2
    iget v12, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorRadius:I

    .line 839
    iget v14, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    int-to-float v14, v14

    int-to-float v4, v4

    int-to-float v10, v10

    iget v15, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    .line 840
    invoke-static {v4, v10, v15}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v4

    sub-float/2addr v14, v4

    int-to-float v4, v6

    int-to-float v6, v13

    .line 841
    iget v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    .line 842
    invoke-static {v4, v6, v10}, Lcom/google/android/material/math/MathUtils;->lerpDeg(FFF)F

    move-result v4

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 843
    iget v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v10, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v14

    add-float/2addr v10, v6

    .line 844
    iget v6, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v6

    move v15, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v14

    sub-float/2addr v6, v9

    .line 847
    iget-object v9, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v9, v9, v8

    .line 848
    iget v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v10, v12

    move-object/from16 v12, p1

    .line 849
    invoke-virtual {v12, v15, v6, v10, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_3

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 854
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v15, v6, v10, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 858
    :cond_3
    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v2, v5, v1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 860
    iget-object v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v2, v2, v11

    .line 861
    iget v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 862
    iget v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v12, v15, v6, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 867
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 868
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    sub-float/2addr v14, v10

    .line 870
    iget v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    iget v6, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v9, v6

    mul-double/2addr v9, v1

    double-to-int v7, v9

    add-int/2addr v5, v7

    .line 871
    iget v7, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-double v9, v6

    mul-double/2addr v9, v3

    double-to-int v6, v9

    sub-int/2addr v7, v6

    float-to-double v9, v14

    mul-double/2addr v1, v9

    double-to-int v1, v1

    add-int/2addr v5, v1

    int-to-float v5, v5

    mul-double/2addr v9, v3

    double-to-int v1, v9

    sub-int/2addr v7, v1

    int-to-float v6, v7

    .line 876
    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v7, v1, v2

    .line 877
    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 878
    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 879
    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v1

    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v1

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 881
    iget-boolean v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    if-nez v1, :cond_5

    const v1, -0x777778

    .line 882
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 883
    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v3, v2, v11

    const/16 v4, 0x9

    aget v3, v3, v4

    aget-object v4, v2, v11

    aget v4, v4, v8

    aget-object v5, v2, v11

    const/4 v6, 0x3

    aget v5, v5, v6

    aget-object v2, v2, v11

    const/4 v6, 0x6

    aget v2, v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 885
    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->oval:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/google/android/material/picker/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2d

    int-to-float v2, v0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 13

    move-object/from16 v0, p8

    move v1, p2

    .line 938
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v1, p3

    .line 939
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v1, p11

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    float-to-int v2, v1

    float-to-double v3, v1

    .line 944
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    const/16 v3, 0xc

    rem-int/2addr v1, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    if-eq v2, v5, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz p12, :cond_2

    if-nez v6, :cond_2

    move-object v8, p0

    move-object v12, p1

    move-object/from16 v7, p4

    move/from16 v9, p9

    goto :goto_4

    :cond_2
    const/16 v7, 0x8

    if-eqz p10, :cond_3

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    or-int/2addr v6, v7

    .line 954
    invoke-static {v6}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v6

    move-object/from16 v7, p4

    invoke-virtual {v7, v6, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 955
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object v8, p0

    move/from16 v9, p9

    .line 956
    invoke-direct {p0, v6, v9}, Lcom/google/android/material/picker/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 958
    aget-object v6, p5, v5

    aget v10, p6, v5

    aget v11, p7, v5

    move-object v12, p1

    invoke-virtual {p1, v6, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 1

    .line 567
    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v0, 0xc

    if-eqz p0, :cond_0

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method private getDegreesForMinute(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 8

    .line 966
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 967
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 968
    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMaxDistForOuterNumber:I

    goto :goto_0

    .line 970
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    .line 971
    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    .line 972
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorRadius:I

    sub-int v2, v1, v0

    add-int/2addr v1, v0

    move v0, v2

    .line 976
    :goto_0
    iget v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-double v2, p1

    .line 977
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    float-to-double p0, p2

    mul-double v4, v2, v2

    mul-double v6, p0, p0

    add-double/2addr v4, v6

    .line 978
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    int-to-double v6, v0

    cmpg-double p2, v4, v6

    if-ltz p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    int-to-double p2, v1

    cmpl-double p2, v4, p2

    if-lez p2, :cond_2

    const/4 p0, -0x1

    return p0

    .line 984
    :cond_2
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    double-to-int p0, p0

    if-gez p0, :cond_3

    add-int/lit16 p0, p0, 0x168

    :cond_3
    return p0
.end method

.method private getHourForDegrees(IZ)I
    .locals 2

    .line 545
    div-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xc

    rem-int/2addr p1, v0

    .line 546
    iget-boolean v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 556
    :cond_1
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_2

    :goto_0
    add-int/lit8 v0, p1, 0xc

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 0

    .line 581
    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p0, 0xc

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 4

    .line 993
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 994
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    .line 995
    iget p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    mul-double/2addr v2, v2

    mul-double/2addr p1, p1

    add-double/2addr v2, p1

    .line 996
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 997
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v2, p0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getMinuteForDegrees(I)I
    .locals 0

    .line 604
    div-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private getMultipliedAlpha(II)I
    .locals 4

    .line 820
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double p0, p0

    int-to-double v0, p2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 4

    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    const/4 v1, 0x0

    .line 1047
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return v1

    .line 1053
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v2, 0x3c

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1059
    iget-boolean p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1060
    invoke-static {p1, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->snapOnly30s(II)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    .line 1061
    iget-boolean p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aget p2, p2, v1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    .line 1063
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1064
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aput p1, v0, v1

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result p1

    move v0, v1

    goto :goto_3

    .line 1068
    :cond_3
    invoke-static {p1}, Lcom/google/android/material/picker/RadialTimePickerView;->snapPrefer30s(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    .line 1069
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aget p2, p2, v2

    if-eq p2, p1, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v1

    .line 1070
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    aput p1, v0, v2

    .line 1072
    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    move v0, v2

    :goto_3
    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    return v1

    .line 1077
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    .line 1078
    invoke-interface {v1, v0, p1, p4}, Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_c

    .line 1083
    :cond_8
    invoke-static {}, Lcom/oneplus/common/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_a

    if-ne v0, v2, :cond_9

    .line 1085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/common/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mVibrator:Landroid/os/Vibrator;

    const/16 p3, 0x406

    invoke-static {p1, p2, p3}, Lcom/oneplus/common/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mVibratePattern:[J

    .line 1088
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p2}, Lcom/oneplus/common/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    goto :goto_5

    .line 1091
    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5

    .line 1094
    :cond_a
    invoke-virtual {p0, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1096
    :cond_b
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return v2
.end method

.method private initData()V
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 658
    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    return-void
.end method

.method private initHoursAndMinutesText()V
    .locals 9

    .line 644
    sget-object v0, Lcom/google/android/material/picker/RadialTimePickerView;->HOURS_NUMBERS:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aget v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 646
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/google/android/material/picker/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    const-string v7, "%02d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 647
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 648
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/google/android/material/picker/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isVisible()Z
    .locals 0

    .line 1005
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static preparePrefer30sMap()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    move v4, v1

    move v3, v2

    move v2, v0

    :goto_0
    const/16 v5, 0x169

    if-ge v0, v5, :cond_3

    .line 268
    sget-object v5, Lcom/google/android/material/picker/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v2, v5, v0

    if-ne v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x6

    const/16 v3, 0x168

    if-ne v2, v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    .line 275
    :cond_0
    rem-int/lit8 v3, v2, 0x1e

    if-nez v3, :cond_1

    const/16 v3, 0xe

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 4

    .line 514
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 515
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    if-eqz p1, :cond_1

    .line 518
    rem-int/lit8 v0, p1, 0x18

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 519
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v1

    .line 520
    iget v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_2

    iget-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v1, :cond_3

    .line 521
    :cond_2
    iput v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    .line 522
    iput-boolean v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 524
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->initData()V

    .line 525
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 528
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_4

    .line 530
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    if-eqz p0, :cond_4

    .line 531
    invoke-interface {p0, v2, p1, p3}, Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    return-void
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 591
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_0

    .line 593
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 594
    invoke-interface {p0, v2, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2

    .line 702
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 706
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    .line 709
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    .line 712
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 713
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p2, 0x0

    .line 714
    iput-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 716
    :goto_0
    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    .line 719
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->initData()V

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 721
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 3

    .line 312
    div-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v1, v0, 0x1e

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    if-ne p0, v0, :cond_3

    add-int/lit8 v0, v0, -0x1e

    goto :goto_1

    :cond_1
    sub-int p1, p0, v0

    sub-int p0, v1, p0

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method private static snapPrefer30s(I)I
    .locals 1

    .line 295
    sget-object v0, Lcom/google/android/material/picker/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 298
    :cond_0
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 4

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/material/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 428
    sget p2, Lcom/google/android/material/R$styleable;->TimePicker_numbersTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 430
    sget p3, Lcom/google/android/material/R$styleable;->TimePicker_numbersInnerTextColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 432
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v2, -0xff01

    if-nez p2, :cond_0

    .line 433
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    const/4 v3, 0x0

    aput-object p2, v1, v3

    .line 434
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    if-nez p3, :cond_1

    .line 435
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :cond_1
    aput-object p3, p2, v1

    .line 436
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 p3, 0x1

    aget-object v1, p2, v3

    aput-object v1, p2, p3

    .line 439
    sget p2, Lcom/google/android/material/R$styleable;->TimePicker_android_numbersSelectorColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/16 p3, 0x28

    if-eqz p2, :cond_2

    .line 443
    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v1

    .line 445
    invoke-virtual {p2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 451
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object p2

    .line 456
    iput v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorColor:I

    .line 457
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object p3, p3, v3

    invoke-virtual {p3, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorDotColor:I

    .line 459
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    sget p2, Lcom/google/android/material/R$styleable;->TimePicker_android_numbersBackgroundColor:I

    .line 460
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/google/android/material/R$color;->timepicker_default_numbers_background_color_material:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 459
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1110
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAmOrPm()I
    .locals 0

    .line 631
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method public getCurrentHour()I
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method public getCurrentItemShowing()I
    .locals 0

    .line 489
    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getCurrentMinute()I
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method public getHoursToMinutes()F
    .locals 0

    .line 749
    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    return p0
.end method

.method public initialize(IIZ)V
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 467
    iput-boolean p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    .line 468
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->initData()V

    :cond_0
    const/4 p3, 0x0

    .line 471
    invoke-direct {p0, p1, p3, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 472
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 690
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mDisabledAlpha:F

    .line 692
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 694
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 695
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 696
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 697
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 698
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    .line 673
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 674
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 675
    iget p4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mXCenter:I

    sub-int/2addr p4, p1

    iget p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mYCenter:I

    sub-int/2addr p1, p3

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mCircleRadius:I

    .line 678
    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTextInset:[I

    aget p4, p3, p2

    sub-int p4, p1, p4

    iget p5, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr p4, p5

    iput p4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMinDistForInnerNumber:I

    const/4 p4, 0x0

    .line 679
    aget v0, p3, p4

    sub-int v0, p1, v0

    add-int/2addr v0, p5

    iput v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 680
    aget p4, p3, p4

    aget p3, p3, p2

    add-int/2addr p4, p3

    div-int/2addr p4, p2

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHalfwayDist:I

    .line 682
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->calculatePositionsHours()V

    .line 683
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 685
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1120
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1123
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/picker/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 1129
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1010
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1013
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 1017
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_6

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1026
    iput-boolean v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_5

    .line 1032
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v0, :cond_4

    move v0, v1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    .line 1037
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1037
    invoke-direct {p0, v4, p1, v2, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mChangedDuringTouch:Z

    :cond_6
    return v1
.end method

.method public setAmOrPm(I)Z
    .locals 1

    .line 620
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mAmOrPm:I

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 626
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mTouchHelper:Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentHour(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ClockView does not support showing item "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadialTimePickerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->showHours(Z)V

    :goto_0
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1

    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public setHoursToMinutes(F)V
    .locals 0

    .line 744
    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mHoursToMinutes:F

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    .line 1114
    iput-boolean p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mInputEnabled:Z

    .line 1115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->mListener:Lcom/google/android/material/picker/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 635
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method

.method public showMinutes(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 639
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method
