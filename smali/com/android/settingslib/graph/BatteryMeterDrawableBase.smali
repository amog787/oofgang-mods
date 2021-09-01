.class public Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawableBase.java"


# instance fields
.field protected final mBatteryPaint:Landroid/graphics/Paint;

.field protected final mBoltPaint:Landroid/graphics/Paint;

.field private final mButtonFrame:Landroid/graphics/RectF;

.field protected mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mColors:[I

.field protected final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private final mFrame:Landroid/graphics/RectF;

.field protected final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mLevel:I

.field private final mOutlinePath:Landroid/graphics/Path;

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPlusFrame:Landroid/graphics/RectF;

.field protected final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field protected mPowerSaveAsColorError:Z

.field private mPowerSaveEnabled:Z

.field protected final mPowersavePaint:Landroid/graphics/Paint;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mTextHeight:F

.field protected final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field protected final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    .line 77
    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    .line 86
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 97
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    .line 101
    iput-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    sget v2, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    sget v3, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 106
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    .line 107
    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 109
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    .line 110
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 111
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    add-int/lit8 v8, v8, 0x1

    .line 112
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v9

    .line 111
    invoke-static {p1, v9}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v9

    aput v9, v7, v8

    goto :goto_1

    .line 114
    :cond_0
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v7, v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    sget v2, Lcom/android/settingslib/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$fraction;->battery_button_height_fraction:I

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_left:I

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_right:I

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 133
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 138
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    const-string p2, "sans-serif-condensed"

    .line 142
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 143
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 146
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    const-string p2, "sans-serif"

    .line 147
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 148
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 149
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 150
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v2, p2

    if-le v2, v1, :cond_2

    .line 151
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    aget p2, p2, v1

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$color;->meter_consumed_color:I

    invoke-static {p2, v2}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    .line 156
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    .line 157
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$color;->batterymeter_bolt_color:I

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    sget p2, Lcom/android/settingslib/R$array;->batterymeter_bolt_points:I

    invoke-static {v0, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    .line 161
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$color;->batterymeter_plus_color:I

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    sget p2, Lcom/android/settingslib/R$array;->batterymeter_plus_points:I

    invoke-static {v0, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    .line 166
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->battery_powersave_outline_thickness:I

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 169
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$dimen;->battery_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return-void
.end method

.method private static loadPoints(Landroid/content/res/Resources;I)[F
    .locals 6

    .line 229
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    move v2, v1

    .line 231
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 232
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    .line 233
    aget v3, p0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 235
    :cond_0
    array-length v0, p0

    new-array v0, v0, [F

    .line 236
    :goto_1
    array-length v3, p0

    if-ge p1, v3, :cond_1

    .line 237
    aget v3, p0, p1

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    aput v3, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 238
    aget v4, p0, v3

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private updateSize()V
    .locals 5

    .line 250
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 252
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 253
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    return-void
.end method


# virtual methods
.method protected batteryColorForLevel(I)I
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    .line 313
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    :goto_1
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 320
    iget v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    int-to-float v4, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 326
    iget v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 328
    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    sub-int v7, v6, v6

    const/4 v8, 0x2

    .line 329
    div-int/2addr v7, v8

    int-to-float v9, v5

    .line 330
    iget v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    mul-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 331
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    .line 332
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v11

    sub-int/2addr v3, v5

    .line 334
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v12

    int-to-float v14, v3

    add-int/2addr v12, v6

    int-to-float v12, v12

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {v11, v13, v14, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 335
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    int-to-float v5, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 338
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v6

    const v11, 0x3e8f5c29    # 0.28f

    mul-float/2addr v6, v11

    .line 339
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->top:F

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 341
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v11, v6

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v10, v10

    add-float/2addr v6, v10

    .line 338
    invoke-virtual {v3, v5, v12, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 345
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v10

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 348
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->batteryColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x60

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v2, v3, :cond_1

    move v4, v5

    goto :goto_0

    .line 352
    :cond_1
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-gt v2, v3, :cond_2

    move v4, v7

    :cond_2
    :goto_0
    cmpl-float v3, v4, v5

    if-nez v3, :cond_3

    .line 356
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 357
    :cond_3
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v5, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v6

    .line 360
    :goto_1
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 361
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getRadiusRatio()F

    move-result v4

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v5, v10

    mul-float/2addr v4, v5

    .line 363
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 364
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v4, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 365
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 366
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v4, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 367
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 368
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 369
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 416
    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    .line 419
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v4, v10

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v4, v11

    .line 420
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v11, v4

    div-float/2addr v11, v10

    add-float/2addr v12, v11

    .line 421
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v15, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v11, v4

    div-float/2addr v11, v10

    add-float/2addr v15, v11

    .line 422
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v11, Landroid/graphics/RectF;->right:F

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v11, v4

    div-float/2addr v11, v10

    sub-float/2addr v7, v11

    .line 423
    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v11, v4

    div-float/2addr v11, v10

    sub-float/2addr v8, v11

    .line 424
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v10, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-nez v10, :cond_4

    iget v10, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v15

    if-nez v10, :cond_4

    iget v10, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_6

    .line 426
    :cond_4
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v12, v15, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 428
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v10, v10, v6

    .line 429
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v10, v7

    add-float/2addr v8, v10

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v11, v11, v5

    .line 430
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    .line 428
    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x2

    .line 431
    :goto_2
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    array-length v7, v4

    if-ge v8, v7, :cond_5

    .line 432
    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    aget v4, v4, v8

    .line 433
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v4, v10

    add-float/2addr v11, v4

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v10, v4, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    add-int/lit8 v15, v8, 0x1

    aget v12, v12, v15

    .line 434
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v12, v4

    add-float/2addr v10, v12

    .line 432
    invoke-virtual {v7, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 436
    :cond_5
    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    aget v4, v4, v6

    .line 437
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v10, v4

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v11, v11, v5

    .line 438
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v11, v4

    add-float/2addr v8, v11

    .line 436
    invoke-virtual {v7, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 442
    :cond_6
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 443
    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v4, :cond_7

    .line 444
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    const/4 v4, 0x0

    .line 452
    iget-boolean v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    const/high16 v8, 0x3f000000    # 0.5f

    if-nez v7, :cond_b

    iget-boolean v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-nez v7, :cond_b

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-le v2, v7, :cond_b

    iget-boolean v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v7, :cond_b

    .line 453
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    .line 456
    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    const/16 v10, 0x64

    if-ne v7, v10, :cond_8

    const v7, 0x3ec28f5c    # 0.38f

    goto :goto_3

    :cond_8
    move v7, v8

    :goto_3
    mul-float/2addr v9, v7

    .line 454
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 457
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    iput v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    .line 458
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v7, v13

    .line 460
    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    add-float/2addr v9, v10

    const v10, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    cmpl-float v10, v3, v9

    if-lez v10, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    if-nez v5, :cond_a

    .line 463
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 464
    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    const/16 v17, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    move-object/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v6

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 466
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_a
    move v6, v5

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 471
    :goto_5
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 474
    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->top:F

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 476
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 477
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 480
    iget-boolean v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-nez v3, :cond_d

    .line 481
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-gt v2, v3, :cond_c

    .line 483
    iget v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v13

    .line 484
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    add-float/2addr v3, v4

    const v4, 0x3ef5c28f    # 0.48f

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    .line 485
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_c
    if-eqz v6, :cond_d

    .line 488
    iget-object v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 493
    :cond_d
    :goto_6
    iget-boolean v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v2, :cond_e

    .line 494
    iget-object v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 206
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    return p0
.end method

.method public getCharging()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    return p0
.end method

.method protected getColorForLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 286
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 287
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 288
    aget v3, v2, v3

    if-gt p1, v1, :cond_1

    .line 292
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_0

    .line 293
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return p0

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getCriticalLevel()I
    .locals 0

    .line 518
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 264
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getRadiusRatio()F
    .locals 0

    const p0, 0x3d70f0f1

    return p0
.end method

.method protected postInvalidate()V
    .locals 3

    .line 224
    new-instance v0, Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 225
    new-instance v0, Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 202
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    invoke-direct {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->updateSize()V

    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 506
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 507
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 508
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 509
    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setShowPercent(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method
