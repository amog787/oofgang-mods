.class public Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OPDefaultAvatarDrawable.java"


# static fields
.field private static final CIRCLE_TEXTURE_RESOURCE_IDS:[I


# instance fields
.field private abridgeName:Ljava/lang/String;

.field private color:I

.field private final colors:Landroid/content/res/TypedArray;

.field private mContext:Landroid/content/Context;

.field private offset:F

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private texture:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 48
    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_circle_left_bottom_bg:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_circle_left_top_bg:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_circle_right_bottom_bg:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_circle_right_top_bg:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_diagonal_left_bottom_01_bg:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_diagonal_left_bottom_02_bg:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_diagonal_left_bottom_03_bg:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_diagonal_left_top_bg:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_horizon_bg:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->op_member_grid_vertical_bg:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->CIRCLE_TEXTURE_RESOURCE_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->offset:F

    .line 84
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->texture_bg_color_array:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    .line 87
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 91
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 93
    iput-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p3}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->getResIndexByIdentify(Ljava/lang/String;)I

    move-result p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "index:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OPDefaultAvatarDrawable"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->pickTexture(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->pickColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->color:I

    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 129
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minDimension:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LetterTileDrawable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v2, v5}, Lcom/oneplus/settings/utils/OPUtils;->sp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 136
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->offset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float/2addr v3, v0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getResIndexByIdentify(Ljava/lang/String;)I
    .locals 1

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p0

    rem-int p0, p1, p0

    :goto_0
    return p0
.end method

.method private isInvalidIndex(I)Z
    .locals 0

    if-ltz p1, :cond_1

    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

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

.method private pickColor(I)I
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->avatar_bg_red:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method private pickTexture(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->isInvalidIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->CIRCLE_TEXTURE_RESOURCE_IDS:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 182
    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
