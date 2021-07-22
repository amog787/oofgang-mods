.class public final Lcom/google/android/material/internal/MultiCollapsingHelper;
.super Ljava/lang/Object;
.source "MultiCollapsingHelper.java"


# static fields
.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private collapsedSubtitleColor:Landroid/content/res/ColorStateList;

.field private collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedSubtitleShadowDx:F

.field private collapsedSubtitleShadowDy:F

.field private collapsedSubtitleShadowRadius:F

.field private collapsedSubtitleSize:F

.field private collapsedSubtitleTypeface:Landroid/graphics/Typeface;

.field private collapsedSubtitleX:F

.field private collapsedSubtitleY:F

.field private currentSubtitleSize:F

.field private currentSubtitleTypeface:Landroid/graphics/Typeface;

.field private currentSubtitleX:F

.field private currentSubtitleY:F

.field private expandedSubtitleColor:Landroid/content/res/ColorStateList;

.field private expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

.field private expandedSubtitleShadowDx:F

.field private expandedSubtitleShadowDy:F

.field private expandedSubtitleShadowRadius:F

.field private expandedSubtitleSize:F

.field private expandedSubtitleTexture:Landroid/graphics/Bitmap;

.field private expandedSubtitleTypeface:Landroid/graphics/Typeface;

.field private expandedSubtitleX:F

.field private expandedSubtitleY:F

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private mAppbarMarginBottom:I

.field private mAppbarMarginLeft:I

.field private mAppbarMarginRight:I

.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTitleShadowDx:F

.field private mCollapsedTitleShadowDy:F

.field private mCollapsedTitleShadowRadius:F

.field private mCollapsedTitleTexture:Landroid/graphics/Bitmap;

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTitleSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawBitmap:Landroid/graphics/Bitmap;

.field private mDrawLine:Z

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

.field private mExpandedTitleShadowDx:F

.field private mExpandedTitleShadowDy:F

.field private mExpandedTitleShadowRadius:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewSize:I

.field private mInsetSubtitleImage:Z

.field private mIsDrawLine:Z

.field private mIsRtl:Z

.field private mMenuMargin:I

.field private mPositionInterpolator:Landroid/animation/TimeInterpolator;

.field private mScale:F

.field private mShowDrawLine:Z

.field private mState:[I

.field private mSubTitleView:Landroid/widget/TextView;

.field private mSubtitleAppearance:I

.field private mSyncBottomY:F

.field private mSyncCollapsNull:Z

.field private mSyncLeftX:F

.field private mSyncText:Ljava/lang/CharSequence;

.field private mSyncTextSecondLine:Z

.field private mSyncTextView:Landroid/widget/TextView;

.field private mSyncTopY:F

.field private mTextLayout:Landroid/text/StaticLayout;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextToDrawCollapsed:Ljava/lang/CharSequence;

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleAppearance:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUseTexture:Z

.field private final mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

.field private maxLines:I

.field private subtitle:Ljava/lang/CharSequence;

.field private final subtitlePaint:Landroid/text/TextPaint;

.field private subtitleScale:F

.field private subtitleTexturePaint:Landroid/graphics/Paint;

.field private subtitleToDraw:Ljava/lang/CharSequence;

.field private syncColorList:Landroid/content/res/ColorStateList;

.field private final syncTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    sget-object v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 84
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    .line 85
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 86
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    .line 87
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    const/4 v0, 0x2

    .line 140
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    .line 150
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mShowDrawLine:Z

    .line 163
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 165
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 166
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 167
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    .line 168
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->oneplus_accent_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    .line 169
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    .line 170
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 171
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 172
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1128
    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1581
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 1582
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 1583
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 1584
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 1585
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 17

    move-object/from16 v0, p0

    .line 729
    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    .line 730
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    .line 731
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 733
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    .line 734
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    .line 737
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 738
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 739
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 740
    :goto_0
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 741
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 744
    :goto_1
    iget v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    iget-boolean v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    const-string v10, "net.oneplus.weather"

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 745
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v9, v11

    goto :goto_2

    :cond_2
    move v9, v6

    .line 744
    :goto_2
    invoke-static {v8, v9}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    .line 748
    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 749
    :goto_3
    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v12

    iget-object v13, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    .line 751
    invoke-direct {v0, v8, v9}, Lcom/google/android/material/internal/MultiCollapsingHelper;->resizeTitleOnlyCollapsedY(IF)V

    goto/16 :goto_5

    .line 753
    :cond_4
    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v12, v9

    sub-float/2addr v14, v12

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v14, v12

    .line 754
    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget-object v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 755
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    const v15, 0x400ccccd    # 2.2f

    add-float/2addr v5, v15

    cmpl-float v5, v14, v5

    if-lez v5, :cond_5

    move v5, v14

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 756
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/google/android/material/R$dimen;->op_app_bar_margin_top:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    :goto_4
    add-float/2addr v12, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 757
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v12, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v12, v5

    iput v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    .line 758
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v14, v13

    add-float/2addr v5, v14

    add-float/2addr v5, v9

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 759
    invoke-virtual {v12}, Landroid/text/TextPaint;->ascent()F

    move-result v12

    sub-float/2addr v5, v12

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lcom/google/android/material/R$dimen;->op_app_bar_collapsed_top_subtitle_margin:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v5, v12

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleY:F

    .line 760
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    const/16 v12, 0x64

    if-ge v5, v12, :cond_6

    .line 761
    iget v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->ascent()F

    move-result v12

    const/high16 v14, 0x40800000    # 4.0f

    div-float/2addr v12, v14

    add-float/2addr v5, v12

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    .line 763
    :cond_6
    iget-boolean v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    if-eqz v5, :cond_7

    .line 764
    invoke-direct {v0, v8, v9}, Lcom/google/android/material/internal/MultiCollapsingHelper;->resizeTitleOnlyCollapsedY(IF)V

    .line 769
    :cond_7
    :goto_5
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/google/android/material/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v9, 0x800007

    and-int/2addr v8, v9

    const/4 v12, 0x5

    if-eq v8, v11, :cond_b

    if-eq v8, v12, :cond_9

    .line 782
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iput v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    .line 783
    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_6

    :cond_8
    move v7, v6

    :goto_6
    add-int/2addr v4, v7

    int-to-float v4, v4

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    goto :goto_9

    .line 777
    :cond_9
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v14, v8

    sub-float/2addr v14, v4

    iput v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    int-to-float v4, v8

    sub-float/2addr v4, v7

    .line 778
    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_a

    move v7, v5

    goto :goto_7

    :cond_a
    move v7, v6

    :goto_7
    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    goto :goto_9

    .line 773
    :cond_b
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v13

    sub-float/2addr v8, v4

    iput v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    .line 774
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v13

    sub-float/2addr v4, v7

    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_c

    move v7, v5

    goto :goto_8

    :cond_c
    move v7, v6

    :goto_8
    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    .line 787
    :goto_9
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    .line 788
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    .line 791
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    .line 792
    :goto_a
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_e

    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 793
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v8, v7, v6, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    .line 794
    :goto_b
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_f

    invoke-virtual {v8, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    .line 797
    :cond_f
    iget v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    iget-boolean v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    if-eqz v14, :cond_10

    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 798
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    move v10, v11

    goto :goto_c

    :cond_10
    move v10, v6

    .line 797
    :goto_c
    invoke-static {v8, v10}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    .line 801
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move/from16 v16, v10

    goto :goto_d

    :cond_11
    const/16 v16, 0x0

    .line 802
    :goto_d
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v14}, Landroid/text/TextPaint;->ascent()F

    move-result v14

    sub-float/2addr v10, v14

    div-float v14, v16, v13

    .line 803
    iget-object v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v15

    sub-float v15, v14, v15

    const/16 v6, 0x50

    const/16 v13, 0x30

    if-eqz v3, :cond_14

    and-int/lit8 v3, v8, 0x70

    if-eq v3, v13, :cond_13

    if-eq v3, v6, :cond_12

    .line 815
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v14

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_e

    .line 807
    :cond_12
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v3, v3, v16

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_e

    .line 810
    :cond_13
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_e

    :cond_14
    and-int/lit8 v3, v8, 0x70

    if-eq v3, v13, :cond_16

    if-eq v3, v6, :cond_15

    .line 831
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v14

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    add-float/2addr v3, v10

    add-float/2addr v3, v15

    .line 832
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    goto :goto_e

    .line 821
    :cond_15
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v3

    sub-float/2addr v6, v10

    sub-float v6, v6, v16

    iput v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    int-to-float v3, v3

    sub-float v3, v3, v16

    .line 822
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    goto :goto_e

    .line 825
    :cond_16
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    add-float/2addr v3, v10

    add-float v3, v3, v16

    .line 826
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    :goto_e
    and-int v3, v8, v9

    if-eq v3, v11, :cond_1a

    if-eq v3, v12, :cond_18

    .line 849
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    .line 850
    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_17

    move v6, v5

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    :goto_f
    add-int/2addr v3, v6

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    goto :goto_12

    .line 844
    :cond_18
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    sub-float/2addr v6, v4

    iput v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    int-to-float v3, v3

    sub-float/2addr v3, v7

    .line 845
    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_19

    move v6, v5

    goto :goto_10

    :cond_19
    const/4 v6, 0x0

    :goto_10
    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    goto :goto_12

    .line 840
    :cond_1a
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    .line 841
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_1b

    move v6, v5

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    .line 855
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    .line 857
    invoke-direct {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedTextSize(F)V

    .line 858
    invoke-direct {v0, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedSubtitleSize(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1077
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1079
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 1081
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private calculateOffsets(F)V
    .locals 7

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->interpolateBounds(F)V

    .line 489
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawX:F

    .line 491
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawY:F

    .line 493
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    .line 495
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleY:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    .line 497
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedTextSize(F)V

    .line 499
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 500
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 499
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedSubtitleSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 503
    sget-object v2, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextBlend(F)V

    .line 504
    sget-object v1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextBlend(F)V

    .line 507
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 511
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 510
    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowRadius:F

    const/4 v3, 0x0

    .line 517
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDx:F

    .line 518
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDy:F

    .line 519
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

    .line 520
    invoke-direct {p0, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v6

    invoke-static {v5, v6, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v5

    .line 516
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 522
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedSubtitleColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 527
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentSyncTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 532
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowRadius:F

    .line 533
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDx:F

    .line 534
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDy:F

    .line 535
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    .line 537
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 536
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result p1

    .line 532
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 539
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingSubtitleSize(F)V
    .locals 8

    .line 618
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 623
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 629
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 630
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    .line 631
    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    .line 632
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    .line 633
    iput-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    move v1, v3

    goto :goto_3

    :cond_1
    move v1, v5

    goto :goto_3

    .line 638
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    .line 639
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 640
    iput-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v5

    .line 643
    :goto_0
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 645
    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    goto :goto_1

    .line 648
    :cond_4
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    .line 651
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 660
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 668
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 670
    :cond_6
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    .line 671
    iput-boolean v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 675
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 676
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 678
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, v5

    :goto_4
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 679
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 680
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 681
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 683
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 686
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    if-lez v2, :cond_a

    goto :goto_6

    :cond_a
    move v2, v5

    :goto_6
    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v2, :cond_b

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    :cond_b
    int-to-float v2, v5

    sub-float/2addr v0, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 692
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 693
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    .line 694
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    :cond_c
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 14

    .line 1132
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1135
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 1143
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 1144
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    .line 1145
    iput v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    .line 1146
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    move v6, v1

    move v1, v0

    move v0, v5

    goto :goto_3

    .line 1155
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    .line 1156
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v6, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1157
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    .line 1160
    :goto_1
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1162
    iput v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    goto :goto_2

    .line 1165
    :cond_4
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    div-float/2addr p1, v3

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    .line 1167
    :goto_2
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    div-float/2addr p1, v3

    mul-float/2addr p1, v1

    cmpl-float p1, p1, v0

    .line 1186
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    move v0, p1

    move p1, v2

    :goto_3
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_7

    .line 1190
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    cmpl-float v7, v7, p1

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    if-nez v7, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v5

    .line 1191
    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    .line 1192
    iput-boolean v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 1194
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    if-eqz v6, :cond_15

    .line 1195
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1197
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1198
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 1199
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1200
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1201
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1202
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 1203
    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1204
    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_b

    .line 1205
    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    if-ne v8, v5, :cond_9

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x10

    int-to-float v8, v8

    goto :goto_6

    :cond_9
    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    add-float/2addr v8, v9

    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1208
    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "net.oneplus.weather"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 p1, 0x4

    goto :goto_7

    :cond_a
    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr p1, v8

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_7
    int-to-float p1, p1

    add-float/2addr p1, v6

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1209
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_b

    .line 1210
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1213
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 1214
    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextSecondLine:Z

    if-eqz v7, :cond_c

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 1215
    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v2, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1216
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v7

    add-float/2addr v2, v7

    :cond_c
    add-float/2addr v6, v2

    .line 1214
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_d
    const-string p1, ""

    if-lez v3, :cond_11

    .line 1221
    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_11

    .line 1222
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v9, v1

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v11, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    iget v12, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1225
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-le v6, v0, :cond_10

    sub-int/2addr v0, v5

    if-lez v0, :cond_e

    .line 1227
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    add-int/lit8 v7, v0, -0x1

    .line 1228
    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    invoke-interface {v6, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_8

    :cond_e
    move-object v6, p1

    .line 1229
    :goto_8
    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    .line 1230
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 1229
    invoke-interface {v7, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1233
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v7, 0x20

    if-ne v2, v7, :cond_f

    .line 1234
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v0, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1235
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v0, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_9

    :cond_f
    move-object v2, p1

    :goto_9
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v0, v7, v4

    const-string v0, "\u2026"

    aput-object v0, v7, v5

    const/4 v0, 0x2

    aput-object v2, v7, v0

    .line 1238
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1240
    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v7, v1, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v6, v0, v4

    aput-object v2, v0, v5

    .line 1242
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 1245
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    .line 1248
    :goto_a
    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1249
    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1250
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    .line 1256
    :cond_11
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    const v2, 0x800007

    and-int/2addr v0, v2

    if-eq v0, v5, :cond_13

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    const v2, 0x800005

    if-eq v0, v2, :cond_12

    .line 1267
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 1262
    :cond_12
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 1258
    :cond_13
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_b
    move-object v8, v0

    .line 1272
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-nez v0, :cond_14

    .line 1273
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    :cond_14
    if-lez v3, :cond_15

    .line 1277
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v7, v1

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    iget v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    :cond_15
    :goto_c
    return-void
.end method

.method private clearTexture()V
    .locals 2

    .line 1531
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1533
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1538
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1541
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1542
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    .line 1545
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1546
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1547
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private ensureCollapsedTexture()V
    .locals 8

    .line 1315
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1319
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 1320
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1321
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    return-void

    .line 1325
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    .line 1326
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1327
    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1328
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v6, v0, v6

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1327
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1331
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureCrossSectionTexture()V
    .locals 11

    .line 1336
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1340
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 1341
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    .line 1342
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    .line 1341
    invoke-virtual {v0, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1343
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    return-void

    .line 1347
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    .line 1348
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1349
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    .line 1353
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    .line 1354
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v9, v0, v1

    iget-object v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1353
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1355
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 1357
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_4
    :goto_1
    return-void
.end method

.method private ensureExpandedSubtitleTexture()V
    .locals 9

    .line 557
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 561
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 562
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 563
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 562
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 564
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gez v1, :cond_1

    goto :goto_0

    .line 570
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    .line 572
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 573
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 575
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 577
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1290
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 1294
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    .line 1295
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 1301
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1304
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1305
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1307
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1309
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 722
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 724
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz p0, :cond_1

    .line 705
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 707
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentExpandedSubtitleColor()I
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private getCurrentSyncTextColor()I
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private interpolateBounds(F)V
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 880
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 882
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 884
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 1562
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1591
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 1593
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 3

    .line 355
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 358
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 360
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 1597
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resizeTitleOnlyCollapsedY(IF)V
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    .line 871
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    add-float/2addr p2, p1

    .line 872
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto :goto_0

    .line 864
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto :goto_0

    .line 867
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    :goto_0
    return-void
.end method

.method private setCollapsedSubtitleTypefaceInternal(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 428
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setCollapsedTextBlend(F)V
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setExpandedSubtitleTypefaceInternal(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 416
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setExpandedTextBlend(F)V
    .locals 0

    .line 1115
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setInterpolatedSubtitleSize(F)V
    .locals 1

    .line 543
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    .line 546
    sget-boolean p1, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    .line 550
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureExpandedSubtitleTexture()V

    .line 553
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    .line 1093
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    .line 1095
    sget-boolean p1, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    .line 1098
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureExpandedTexture()V

    .line 1100
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureCollapsedTexture()V

    .line 1101
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureCrossSectionTexture()V

    .line 1103
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private updateTitlePosition()Z
    .locals 11

    .line 968
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 969
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 970
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 973
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v5

    const-string v5, "net.oneplus.weather"

    const/4 v6, 0x2

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 974
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    mul-int/2addr v5, v6

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 976
    :cond_1
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 978
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 981
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 984
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 985
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_6

    .line 988
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 989
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    .line 990
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    mul-int/2addr v7, v6

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 991
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_2

    .line 992
    :cond_4
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    .line 993
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_2

    .line 995
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_2

    .line 998
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1000
    :goto_2
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    .line 1001
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    .line 1003
    :cond_7
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1005
    :goto_3
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    sub-float v6, v5, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1006
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1008
    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    if-eqz v3, :cond_8

    .line 1009
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_5

    .line 1011
    :cond_8
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    .line 1012
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    .line 1013
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->op_control_margin_space1:I

    .line 1014
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    :goto_4
    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 1011
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1017
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_1b

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v5, :cond_1b

    .line 1018
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1019
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_b
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget-boolean v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v6, v6, 0x10

    goto :goto_6

    :cond_c
    move v6, v2

    :goto_6
    sub-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_8

    :cond_d
    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-boolean v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v6, :cond_e

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v6, v6, 0x10

    goto :goto_7

    :cond_e
    move v6, v2

    :goto_7
    int-to-float v6, v6

    add-float/2addr v5, v6

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1025
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1b

    .line 1026
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1027
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1028
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 1031
    :cond_f
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v5, v6, v2, v7, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 1032
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1033
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_10

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    goto :goto_9

    :cond_10
    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    :goto_9
    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_11

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v7, v7, 0x10

    goto :goto_a

    :cond_11
    move v7, v2

    :goto_a
    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    .line 1035
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x41c00000    # 24.0f

    add-float/2addr v6, v7

    const/high16 v7, 0x42400000    # 48.0f

    if-eqz v0, :cond_13

    .line 1036
    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v5

    sub-float/2addr v8, v7

    iget-boolean v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v9, :cond_12

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v9, v9, 0x10

    goto :goto_b

    :cond_12
    move v9, v2

    :goto_b
    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_c

    :cond_13
    move v8, v6

    :goto_c
    iput v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    .line 1039
    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v9

    add-float/2addr v10, v8

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x43a50000    # 330.0f

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v8, v9

    sub-float/2addr v10, v8

    iput v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    .line 1040
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v10, v8

    iput v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    add-float v8, v6, v5

    .line 1041
    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_17

    .line 1042
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1043
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :cond_14
    iput-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextSecondLine:Z

    .line 1046
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    neg-float v0, v6

    sub-float/2addr v0, v7

    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v3, :cond_15

    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 p0, p0, 0x10

    goto :goto_d

    :cond_15
    move p0, v2

    :goto_d
    int-to-float p0, p0

    sub-float/2addr v0, p0

    goto :goto_e

    :cond_16
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_11

    :cond_17
    if-eqz v0, :cond_18

    .line 1049
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_f

    :cond_18
    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    :goto_f
    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    .line 1052
    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    .line 1053
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    .line 1054
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1055
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    :cond_19
    iput-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextSecondLine:Z

    .line 1058
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float p0, p0

    goto :goto_10

    :cond_1a
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    :goto_10
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_1b
    :goto_11
    return v2
.end method


# virtual methods
.method public calculateCurrentOffsets()V
    .locals 1

    .line 484
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 889
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 890
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawTitle:Z

    if-eqz v1, :cond_5

    .line 893
    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    .line 894
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    .line 897
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 898
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 899
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 900
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 901
    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 907
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 914
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    .line 915
    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    mul-float/2addr v4, v5

    :goto_1
    if-eqz v3, :cond_2

    add-float/2addr v2, v4

    .line 931
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->drawLine(Landroid/graphics/Canvas;)V

    .line 934
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 935
    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 936
    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_3

    .line 937
    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 939
    :cond_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 943
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateTitlePosition()Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    .line 946
    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 951
    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mShowDrawLine:Z

    if-eqz v1, :cond_2

    .line 952
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_divider_height_standard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 953
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$color;->op_control_divider_color_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 954
    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 955
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 956
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginRight:I

    sub-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 957
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    move-object v2, p1

    .line 954
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 959
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 960
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x1

    .line 961
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsDrawLine:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 963
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsDrawLine:Z

    :goto_0
    return-void
.end method

.method public getCollapsedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public getCollapsedTextGravity()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    return p0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public getCurrentCollapsedSubtitleColor()I
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public getCurrentExpandedTextColor()I
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 713
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 715
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getExpandedSubtitleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1410
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpandedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1566
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpandedTextGravity()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    return p0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 472
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    return p0
.end method

.method public getIsDrawLineInit()Z
    .locals 0

    .line 1089
    iget-boolean p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsDrawLine:Z

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1527
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSyncColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1414
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1397
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleViewCollapsedTextSize()F
    .locals 0

    .line 1085
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    return p0
.end method

.method public isExistSyncCloud()Z
    .locals 0

    .line 1713
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method final isStateful()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    .line 467
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBoundsChanged()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawTitle:Z

    return-void
.end method

.method public recalculate()V
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateBaseOffsets()V

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateCurrentOffsets()V

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateImageViewPosition()V

    :cond_0
    return-void
.end method

.method public setAppbarMargin(IIII)V
    .locals 0

    .line 1070
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    .line 1071
    iput p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginRight:I

    .line 1073
    iput p4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p2, 0x1

    .line 230
    iput-boolean p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 231
    iget-object p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    sub-int p4, p3, p1

    .line 232
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.oneplus.weather"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p4, v0

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 234
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    sub-int/2addr p3, p1

    .line 235
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->onBoundsChanged()V

    :cond_3
    return-void
.end method

.method public setCollapsedSubtitleAppearance(I)V
    .locals 3

    .line 1468
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 1470
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1471
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 1473
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 1474
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    .line 1476
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 1477
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    .line 1479
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDx:F

    .line 1480
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDy:F

    .line 1481
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowRadius:F

    .line 1482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1483
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    .line 1485
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 600
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 601
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    .line 258
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 259
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleAppearance(I)V
    .locals 3

    .line 269
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 271
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 272
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 274
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 275
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    .line 277
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 278
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

    .line 280
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDx:F

    .line 281
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDy:F

    .line 282
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowRadius:F

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 201
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 371
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    .line 1120
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 223
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method public setExpandedSubtitleAppearance(I)V
    .locals 3

    .line 1447
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 1448
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubtitleAppearance:I

    .line 1449
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1450
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 1452
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 1453
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    .line 1455
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 1456
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    .line 1458
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDx:F

    .line 1459
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDy:F

    .line 1460
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowRadius:F

    .line 1461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1462
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    .line 1464
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 611
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 612
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    .line 247
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 248
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTitleAppearance(I)V
    .locals 3

    .line 292
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 293
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleAppearance:I

    .line 294
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 295
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 297
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 298
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    .line 300
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 301
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

    .line 303
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDx:F

    .line 304
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDy:F

    .line 305
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowRadius:F

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setExpandedTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 446
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 448
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 449
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    .line 450
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1610
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1612
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    .line 1614
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 1615
    iput-object p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    .line 1616
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setInsetImage(Z)V
    .locals 0

    .line 1601
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    return-void
.end method

.method public setMenuMargin(I)V
    .locals 0

    .line 1734
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    .line 457
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 2

    .line 1642
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 1643
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1644
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1645
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1646
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubtitleAppearance:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1647
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1648
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1495
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    .line 1496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1497
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    .line 1499
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v1, v0, 0x10

    :cond_1
    sub-int/2addr p1, v1

    int-to-float p1, p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v1, v0, 0x10

    :cond_3
    int-to-float v0, v1

    add-float/2addr p1, v0

    .line 1502
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_1

    .line 1503
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 1504
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1505
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    .line 1508
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    .line 1509
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    return-void

    .line 1513
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    .line 1514
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    .line 1515
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateTitlePosition()Z

    :cond_7
    return-void
.end method

.method public setSyncCollapsSubtitleNull(Z)V
    .locals 0

    .line 1738
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    return-void
.end method

.method public setSyncTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setSyncTextView(Landroid/widget/TextView;)V
    .locals 3

    .line 1652
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 1653
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1654
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1655
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1656
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubtitleAppearance:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1657
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1658
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1385
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    .line 1386
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1387
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    .line 1389
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1390
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    .line 1391
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    .line 1392
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateTitlePosition()Z

    :cond_2
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 1

    .line 1633
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    .line 1634
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1635
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1636
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1637
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleAppearance:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1638
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public updateImageViewPosition()V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_1
    return-void
.end method
