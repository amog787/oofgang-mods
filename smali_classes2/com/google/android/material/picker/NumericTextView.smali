.class public Lcom/google/android/material/picker/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D


# instance fields
.field private mCount:I

.field private mListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/picker/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMinValue:I

    const/16 p1, 0x63

    .line 24
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxCount:I

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumericTextView;->mShowLeadingZeroes:Z

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    .line 249
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    if-lez p1, :cond_1

    .line 250
    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    sub-int/2addr p1, v1

    .line 251
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/picker/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 254
    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    iget v3, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxCount:I

    if-ge v2, v3, :cond_1

    .line 255
    invoke-static {p1}, Lcom/google/android/material/picker/NumericTextView;->numericKeyCodeToInt(I)I

    move-result p1

    .line 256
    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, p1

    .line 257
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    if-gt v2, p1, :cond_1

    .line 258
    iput v2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    .line 259
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    .line 267
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    if-lez p1, :cond_2

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 276
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Lcom/google/android/material/picker/NumericTextView;->mListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_6

    .line 279
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mMinValue:I

    if-lt p1, v2, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    .line 280
    :goto_2
    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    iget v3, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxCount:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    if-le v2, v3, :cond_5

    :cond_4
    move v0, v1

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/google/android/material/picker/NumericTextView;->mListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    iget v3, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    invoke-interface {v2, p0, v3, p1, v0}, Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/google/android/material/picker/NumericTextView;IZZ)V

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

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

.method private static numericKeyCodeToInt(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x7

    return p0
.end method

.method private updateDisplayedValue()V
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 190
    iget v3, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMinimumWidth()V
    .locals 7

    .line 200
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 203
    :goto_0
    iget v4, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    if-ge v2, v4, :cond_1

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 215
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/google/android/material/picker/NumericTextView;->mListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    return-object p0
.end method

.method public final getRangeMaximum()I
    .locals 0

    .line 145
    iget p0, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    return p0
.end method

.method public final getRangeMinimum()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/google/android/material/picker/NumericTextView;->mMinValue:I

    return p0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/google/android/material/picker/NumericTextView;->mShowLeadingZeroes:Z

    return p0
.end method

.method public final getValue()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const-string p2, ""

    if-eqz p1, :cond_0

    .line 56
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mPreviousValue:I

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    .line 58
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mCount:I

    if-nez p1, :cond_1

    .line 66
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mPreviousValue:I

    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    iget p2, p0, Lcom/google/android/material/picker/NumericTextView;->mMinValue:I

    if-ge p1, p2, :cond_2

    .line 74
    iput p2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    .line 77
    :cond_2
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    .line 79
    iget-object p1, p0, Lcom/google/android/material/picker/NumericTextView;->mListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_3

    .line 80
    iget p2, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    const/4 p3, 0x1

    invoke-interface {p1, p0, p2, p3, p3}, Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/google/android/material/picker/NumericTextView;IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 228
    invoke-static {p1}, Lcom/google/android/material/picker/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 230
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 235
    invoke-static {p1}, Lcom/google/android/material/picker/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 242
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public final setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/google/android/material/picker/NumericTextView;->mListener:Lcom/google/android/material/picker/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final setRange(II)V
    .locals 2

    .line 121
    iget v0, p0, Lcom/google/android/material/picker/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_0

    .line 122
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMinValue:I

    .line 125
    :cond_0
    iget p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    if-eq p1, p2, :cond_1

    .line 126
    iput p2, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxValue:I

    int-to-double p1, p2

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    sget-wide v0, Lcom/google/android/material/picker/NumericTextView;->LOG_RADIX:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mMaxCount:I

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/picker/NumericTextView;->updateMinimumWidth()V

    .line 130
    invoke-direct {p0}, Lcom/google/android/material/picker/NumericTextView;->updateDisplayedValue()V

    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    .line 164
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumericTextView;->mShowLeadingZeroes:Z

    .line 166
    invoke-direct {p0}, Lcom/google/android/material/picker/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    .line 95
    iget v0, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_0

    .line 96
    iput p1, p0, Lcom/google/android/material/picker/NumericTextView;->mValue:I

    .line 98
    invoke-direct {p0}, Lcom/google/android/material/picker/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method
