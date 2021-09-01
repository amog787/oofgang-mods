.class public Lcom/google/android/material/picker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/google/android/material/picker/NumberPicker$CustomEditText;,
        Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;,
        Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;,
        Lcom/google/android/material/picker/NumberPicker$InputTextFilter;,
        Lcom/google/android/material/picker/NumberPicker$Formatter;,
        Lcom/google/android/material/picker/NumberPicker$OnScrollListener;,
        Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;,
        Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final sTwoDigitFormatter:Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsBold:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;

.field private mPaintColor:I

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectMiddleCount:I

.field private mSelectedValueColor:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionDividerWidth:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    sget v0, Lcom/google/android/material/R$layout;->op_number_picker:I

    sput v0, Lcom/google/android/material/picker/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 196
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/NumberPicker;->sTwoDigitFormatter:Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    .line 2097
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/picker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 584
    sget v0, Lcom/google/android/material/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 597
    sget v0, Lcom/google/android/material/picker/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v2, 0x1

    .line 154
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 155
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mIsBold:Z

    const-wide/16 v3, 0x12c

    .line 298
    iput-wide v3, p0, Lcom/google/android/material/picker/NumberPicker;->mLongPressUpdateInterval:J

    .line 303
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 308
    iput-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    const/high16 v3, -0x80000000

    .line 328
    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    .line 437
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    const/4 v3, -0x1

    .line 488
    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 499
    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    .line 599
    sget-object v4, Lcom/google/android/material/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 601
    sget p3, Lcom/google/android/material/R$styleable;->NumberPicker_internalLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 604
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    .line 606
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_hideWheelUntilFocused:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHideWheelUntilFocused:Z

    .line 609
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_opsolidColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSolidColor:I

    .line 611
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 615
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 616
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 618
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 622
    :cond_2
    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x40000000    # 2.0f

    .line 626
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 624
    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 627
    sget v4, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    .line 630
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDividerWidth:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    const/high16 v0, 0x42400000    # 48.0f

    .line 635
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 633
    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 636
    sget v4, Lcom/google/android/material/R$styleable;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividersDistance:I

    .line 639
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMinHeight:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinHeight:I

    .line 642
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxHeight:I

    .line 644
    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mMinHeight:I

    if-eq v4, v3, :cond_4

    if-eq v0, v3, :cond_4

    if-gt v4, v0, :cond_3

    goto :goto_1

    .line 646
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 649
    :cond_4
    :goto_1
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    .line 652
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    .line 654
    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    if-eq v4, v3, :cond_6

    if-eq v0, v3, :cond_6

    if-gt v4, v0, :cond_5

    goto :goto_2

    .line 656
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 659
    :cond_6
    :goto_2
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    if-ne v0, v3, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mComputeMaxWidth:Z

    .line 661
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 663
    sget v0, Lcom/google/android/material/R$styleable;->NumberPicker_selectionOtherNumberColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 664
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    new-instance p2, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    .line 673
    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, v2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 675
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 677
    invoke-virtual {p2, p3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 679
    new-instance p2, Lcom/google/android/material/picker/NumberPicker$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/NumberPicker$1;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    .line 692
    new-instance p3, Lcom/google/android/material/picker/NumberPicker$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/NumberPicker$2;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    .line 707
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v5, 0x0

    if-nez v4, :cond_8

    .line 708
    sget v4, Lcom/google/android/material/R$id;->increment:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 709
    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 712
    :cond_8
    iput-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 716
    :goto_4
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_9

    .line 717
    sget v4, Lcom/google/android/material/R$id;->decrement:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 718
    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 721
    :cond_9
    iput-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 725
    :goto_5
    sget p2, Lcom/google/android/material/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 726
    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 727
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/NumberPicker$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/NumberPicker$3;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 738
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array p3, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/NumberPicker$InputTextFilter;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    aput-object v4, p3, v1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 742
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 743
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 746
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mTouchSlop:I

    .line 748
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mMinimumFlingVelocity:I

    .line 749
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaximumFlingVelocity:I

    .line 751
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    .line 754
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectedValueColor:I

    .line 755
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPaintColor:I

    .line 756
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 757
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 758
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 759
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 760
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 764
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v5, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 765
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 767
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 770
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 771
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/google/android/material/picker/NumberPicker;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/google/android/material/picker/NumberPicker;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/picker/NumberPicker;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/NumberPicker;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/material/picker/NumberPicker;I)I
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/material/picker/NumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/NumberPicker;ZJ)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 98
    sget-object v0, Lcom/google/android/material/picker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/NumberPicker;)Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/picker/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1779
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1780
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1781
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1784
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1786
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1788
    :cond_1
    iget-object v7, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1790
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1793
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1795
    :cond_3
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1899
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1900
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1902
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1903
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1904
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1906
    aput v0, p1, v1

    .line 1907
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1915
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1916
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1920
    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1923
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 1925
    aget-object p0, v2, p0

    goto :goto_1

    .line 1927
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 1930
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2198
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2200
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    .line 2201
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 2204
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1855
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1858
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1860
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1863
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 1934
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 2844
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2054
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2056
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2061
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2063
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2064
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2065
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2074
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 2080
    :catch_0
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    return p0
.end method

.method public static final getTwoDigitFormatter()Lcom/google/android/material/picker/NumberPicker$Formatter;
    .locals 1

    .line 202
    sget-object v0, Lcom/google/android/material/picker/NumberPicker;->sTwoDigitFormatter:Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 1870
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1871
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 1872
    :cond_0
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    .line 1873
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1301
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1302
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1305
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1306
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1883
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1884
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1886
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1887
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1888
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    .line 1890
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1891
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1818
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 1819
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1801
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1802
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    .line 1803
    array-length v1, v0

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1804
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1805
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1806
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1807
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    .line 1810
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1811
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    .line 1813
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1814
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1731
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1732
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    .line 1733
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1734
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1735
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1736
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1737
    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1739
    :cond_0
    aput v3, v0, v2

    .line 1740
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1692
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1693
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1702
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1700
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1698
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 847
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 848
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 849
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 850
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 852
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 860
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    const/4 p2, 0x5

    .line 1979
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1981
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1983
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->mOnValueChangeListener:Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1984
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/google/android/material/picker/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1842
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1845
    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    .line 1846
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mOnScrollListener:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1847
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/picker/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/google/android/material/picker/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1827
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1828
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1830
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1832
    :cond_1
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1833
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2017
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2018
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2020
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2022
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1995
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1997
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1999
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2000
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2

    .line 2088
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2089
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    .line 2091
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;->post(II)V

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2039
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2041
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSetSelectionCommand:Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2042
    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2044
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2045
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2047
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 2007
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1719
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1720
    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1751
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1755
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1756
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1758
    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1759
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1761
    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1762
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1763
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1765
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/NumberPicker;->notifyChange(II)V

    .line 1767
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1768
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1286
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 1287
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 1289
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1292
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1293
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1315
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1322
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/google/android/material/picker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1328
    :cond_2
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1331
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_3

    .line 1335
    :cond_4
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1337
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1343
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1344
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1345
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1346
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1348
    :cond_7
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    .line 1350
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1963
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1965
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1966
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1396
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1397
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1938
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 1944
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 1945
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1106
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1107
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1109
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1113
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1114
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1115
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1116
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1118
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    .line 1119
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPreviousScrollerY:I

    .line 1120
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1123
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 1183
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 1173
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1178
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1056
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1057
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1059
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_6

    .line 1060
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1063
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 1065
    :cond_1
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 1070
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1072
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 1095
    :cond_3
    invoke-virtual {v1, v0, v4}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1097
    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1075
    :cond_4
    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1077
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1078
    invoke-virtual {v1, v0, v6, v5}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1082
    :cond_5
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    .line 1084
    invoke-virtual {v1, p1, v4}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1087
    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1089
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1090
    invoke-virtual {v1, v0, v6, v5}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1007
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1015
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 1018
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 1032
    :cond_3
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    .line 1033
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1020
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-ne v0, v2, :cond_5

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    .line 1039
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1022
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1023
    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1024
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 1025
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    if-ne v0, v2, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 1026
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 1002
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1044
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1048
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 1051
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1565
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1567
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1672
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1673
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1676
    new-instance v0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1678
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mAccessibilityNodeProvider:Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1503
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1466
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1429
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    return p0
.end method

.method public getSolidColor()I
    .locals 0

    .line 1188
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSolidColor:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1420
    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1362
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 1577
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1579
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 1580
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1559
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1560
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1587
    sget-object v0, Landroid/widget/LinearLayout;->PRESSED_STATE_SET:[I

    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    .line 1588
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1591
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1592
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1593
    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 1596
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget v7, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-nez v7, :cond_3

    .line 1598
    iget-boolean v7, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v7, :cond_2

    .line 1599
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1600
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1601
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1603
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v6, :cond_3

    .line 1604
    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1605
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    .line 1606
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v8

    .line 1605
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1607
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1612
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    move v6, v5

    .line 1613
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_9

    .line 1614
    aget v7, v0, v6

    .line 1615
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1621
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    if-ne v6, v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    if-ne v6, v8, :cond_8

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1622
    invoke-virtual {v8}, Landroid/widget/EditText;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_8

    .line 1623
    :cond_5
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    if-ne v6, v8, :cond_6

    .line 1624
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectedValueColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1625
    iget-boolean v8, p0, Lcom/google/android/material/picker/NumberPicker;->mIsBold:Z

    if-eqz v8, :cond_7

    .line 1626
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 1629
    :cond_6
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/material/picker/NumberPicker;->mPaintColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1630
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1632
    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1634
    :cond_8
    iget v7, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_c

    .line 1638
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1640
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    .line 1641
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1642
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v4, v1, v3

    add-int/2addr v1, v3

    .line 1648
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v3, v0

    if-nez v2, :cond_a

    .line 1650
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    invoke-virtual {v2, v5, v0, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 1652
    :cond_a
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1655
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1658
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1659
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    sub-int v2, v0, v2

    .line 1660
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    if-nez v3, :cond_b

    .line 1661
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1663
    :cond_b
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1665
    :goto_4
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 868
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 871
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 874
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 875
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 876
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventTime:J

    .line 878
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mIgnoreMoveEvents:Z

    .line 879
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    .line 881
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 882
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 883
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 886
    :cond_2
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 887
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 888
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 893
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 894
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 895
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 896
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 897
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 898
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 899
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 900
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 901
    :cond_5
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 902
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->hideSoftInput()V

    .line 904
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 903
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/picker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 905
    :cond_6
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 906
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->hideSoftInput()V

    .line 908
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 907
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/material/picker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 910
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    .line 911
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 794
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 797
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 798
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 801
    iget-object p4, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 802
    iget-object p5, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 803
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 804
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 807
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 811
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheel()V

    .line 812
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeFadingEdges()V

    .line 813
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 815
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 822
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 823
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 827
    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 828
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/picker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 829
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 831
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/picker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 833
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/material/picker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 835
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 921
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 925
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 931
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 934
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 935
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 936
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 937
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 938
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeAllCallbacks()V

    .line 939
    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 942
    :cond_4
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 943
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    .line 944
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 946
    :cond_5
    :goto_0
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 950
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeBeginSoftInputCommand()V

    .line 951
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 952
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->cancel()V

    .line 953
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 954
    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 955
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 956
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 957
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->fling(I)V

    .line 958
    invoke-direct {p0, v2}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 960
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 961
    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/material/picker/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 963
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 964
    iget-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 965
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mPerformClickOnTap:Z

    .line 966
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->performClick()Z

    goto :goto_1

    .line 968
    :cond_8
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 971
    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    .line 972
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 975
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->changeValueByOne(Z)V

    .line 976
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mPressedStateHelper:Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/google/android/material/picker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 981
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 983
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->onScrollStateChange(I)V

    .line 985
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 986
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1264
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0

    .line 1265
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1266
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->showSoftInput()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1273
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1274
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result p0

    return p0

    .line 1275
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1276
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->showSoftInput()V

    .line 1277
    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->mIgnoreMoveEvents:Z

    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1141
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorIndices:[I

    .line 1142
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-gt v0, v1, :cond_0

    .line 1144
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1147
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-lt v0, v1, :cond_1

    .line 1149
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1152
    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1153
    :cond_2
    :goto_0
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_3

    .line 1154
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1155
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1156
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    .line 1157
    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1158
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1161
    :cond_3
    :goto_1
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 1162
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    .line 1163
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1164
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    .line 1165
    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectMiddleCount:I

    aget p2, p1, p2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1166
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1519
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1522
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1525
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1527
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 1528
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1529
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .line 787
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mSelectionDividerWidth:I

    .line 788
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1130
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1133
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1136
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/google/android/material/picker/NumberPicker$Formatter;)V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1224
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mFormatter:Lcom/google/android/material/picker/NumberPicker$Formatter;

    .line 1225
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1226
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1480
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1486
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mMaxValue:I

    .line 1487
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1488
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1490
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateWrapSelectorWheel()V

    .line 1491
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1492
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 1493
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->tryComputeMaxWidth()V

    .line 1494
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1484
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1443
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1449
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mMinValue:I

    .line 1450
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1451
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->mValue:I

    .line 1453
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateWrapSelectorWheel()V

    .line 1454
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1455
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateInputTextView()Z

    .line 1456
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->tryComputeMaxWidth()V

    .line 1457
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1447
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1411
    iput-wide p1, p0, Lcom/google/android/material/picker/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/material/picker/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mOnScrollListener:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->mOnValueChangeListener:Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setSelectNumberCount(I)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1258
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWithoutSelectBoldText(Z)V
    .locals 1

    .line 781
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mIsBold:Z

    .line 782
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 783
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1383
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1384
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
