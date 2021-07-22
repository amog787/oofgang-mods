.class Lcom/google/android/material/picker/YearPickerView;
.super Landroid/widget/FrameLayout;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

.field private mPicker:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget v0, Lcom/google/android/material/R$layout;->op_year_label_text_view:I

    sput v0, Lcom/google/android/material/picker/YearPickerView;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010524

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/picker/YearPickerView;->ITEM_LAYOUT:I

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget p1, Lcom/google/android/material/R$dimen;->datepicker_view_animator_height:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    sget p1, Lcom/google/android/material/R$dimen;->datepicker_year_label_height:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    sget p1, Lcom/google/android/material/R$id;->year_picker:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/NumberPicker;

    iput-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    const/4 p2, 0x5

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setSelectNumberCount(I)V

    .line 40
    iget-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setWithoutSelectBoldText(Z)V

    .line 41
    iget-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    new-instance p2, Lcom/google/android/material/picker/YearPickerView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/YearPickerView$1;-><init>(Lcom/google/android/material/picker/YearPickerView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;)V

    return-void
.end method


# virtual methods
.method public setCurrentYear()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/android/material/picker/YearPickerView;->mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;->onYearChanged(Lcom/google/android/material/picker/YearPickerView;I)V

    :cond_0
    return-void
.end method

.method public setOnYearSelectedListener(Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->mOnYearSelectedListener:Lcom/google/android/material/picker/YearPickerView$OnYearSelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 77
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 78
    iget-object v0, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    .line 79
    iget-object p0, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/picker/YearPickerView;->mPicker:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    return-void
.end method
