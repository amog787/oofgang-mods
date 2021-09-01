.class public Lcom/oneplus/settings/ui/OPLedColorPickerPreference;
.super Lcom/oneplus/settings/ui/CustomDialogPreference;
.source "OPLedColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultColors:[Ljava/lang/String;

.field private mDisabledCellColor:I

.field mImageView:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mPalette:[Ljava/lang/String;

.field private mPaletteNamesResIds:[I

.field private mRippleEffectColor:I

.field private mTmpColor:Ljava/lang/String;

.field private mUseColorLabelAsSummary:Z

.field private mViews:[Landroid/view/View;

.field private mVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, ""

    .line 63
    iput-object p3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    const/4 p3, 0x0

    .line 73
    iput-boolean p3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    .line 79
    sget p4, Lcom/android/settings/R$layout;->op_led_colorpicker_preference:I

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 80
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->op_primary_default_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, p3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->op_primary_default_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p4, v1

    iput-object p4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    .line 85
    sget-object p4, Lcom/android/settings/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, p4, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    sget p4, Lcom/android/settings/R$styleable;->ColorPickerPreference_rippleEffectColor:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->colorpicker_ripple_effect_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 87
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mRippleEffectColor:I

    .line 89
    sget p4, Lcom/android/settings/R$styleable;->ColorPickerPreference_disabledCellColor:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->colorpicker_disabled_cell_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 89
    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDisabledCellColor:I

    .line 91
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    sget p1, Lcom/android/settings/R$string;->color_picker_default:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNeutralButtonText(I)V

    const/high16 p1, 0x1040000

    .line 95
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNegativeButtonText(I)V

    const p1, 0x104000a

    .line 96
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setPositiveButtonText(I)V

    .line 97
    sget p1, Lcom/android/settings/R$layout;->op_led_preference_dialog_colorpicker:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setDialogLayoutResource(I)V

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 100
    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0

    .line 102
    :cond_0
    iput-boolean p3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method private isDefaultColor()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 465
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 1

    .line 437
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 443
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v0, :cond_6

    array-length v0, v0

    if-ltz v0, :cond_6

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 446
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 447
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->isDefaultColor()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 458
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->color_picker_unknown_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 449
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_colorful_mode_cannot_change_color_accent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    const/16 v0, 0x8

    .line 452
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 455
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->op_primary_default_light_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5

    .line 235
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 237
    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mRippleEffectColor:I

    aput p0, v1, v3

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 245
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    .line 315
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->updateSummary()V

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    if-gt v0, v1, :cond_0

    .line 327
    sget v3, Lcom/android/settings/R$id;->colors_row_2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-array v2, v2, [I

    .line 331
    sget v3, Lcom/android/settings/R$id;->color_0:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/android/settings/R$id;->color_1:I

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    sget v5, Lcom/android/settings/R$id;->color_2:I

    aput v5, v2, v3

    const/4 v3, 0x3

    sget v5, Lcom/android/settings/R$id;->color_3:I

    aput v5, v2, v3

    sget v3, Lcom/android/settings/R$id;->color_4:I

    aput v3, v2, v1

    const/4 v1, 0x5

    sget v3, Lcom/android/settings/R$id;->color_5:I

    aput v3, v2, v1

    const/4 v1, 0x6

    sget v3, Lcom/android/settings/R$id;->color_6:I

    aput v3, v2, v1

    const/4 v1, 0x7

    sget v3, Lcom/android/settings/R$id;->color_7:I

    aput v3, v2, v1

    .line 341
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v1, v1

    if-ge v4, v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget v3, v2, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v4

    .line 344
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v1, v1, v4

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v1, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v1, v1, v4

    if-lez v0, :cond_1

    new-instance v3, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;-><init>(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    :cond_2
    sget v0, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 363
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    .line 364
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 366
    :cond_3
    sget p1, Lcom/android/settings/R$string;->color_picker_message_default:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessage(I)V

    .line 369
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->init()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 125
    sget v0, Lcom/android/settings/R$id;->secondary_icon:I

    .line 126
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 139
    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    if-eqz p1, :cond_1

    .line 140
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onDialogClosed(I)V
    .locals 4

    .line 374
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, -0x3

    if-ne p1, v3, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 380
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 381
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    if-nez v0, :cond_9

    .line 384
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_9

    .line 387
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 388
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    :cond_8
    :goto_3
    if-nez v0, :cond_9

    .line 391
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    check-cast p1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    .line 427
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 430
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 432
    iget-object p1, p1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 422
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 403
    invoke-super {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 412
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 414
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object p0, v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 2

    .line 179
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->updateSummary()V

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 307
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setImageViewVisibility()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageText(I)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 259
    sget v2, Lcom/android/settings/R$id;->check_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/R$id;->check_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/R$id;->check_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/R$id;->check_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/R$id;->check_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/R$id;->check_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/settings/R$id;->check_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/settings/R$id;->check_7:I

    aput v2, v0, v1

    .line 269
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object p0, p0, p1

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
