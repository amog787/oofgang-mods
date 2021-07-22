.class public Lcom/google/android/material/appbar/Appbar;
.super Landroid/view/ViewGroup;
.source "Appbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/Appbar$SavedState;,
        Lcom/google/android/material/appbar/Appbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE:I


# instance fields
.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mDividerColor:I

.field private mDividerLine:Landroid/view/View;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInScrolling:Z

.field private mLargeMode:Z

.field private mLimitDivider:Z

.field private mMaxButtonHeight:I

.field private mMinHeight:I

.field private final mMode:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcom/google/android/material/appbar/AppbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_Appbar_WithoutTab:I

    sput v0, Lcom/google/android/material/appbar/Appbar;->DEFAULT_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/Appbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 128
    sget v0, Lcom/google/android/material/R$attr;->appbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/Appbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    .line 96
    iput v0, p0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mTempMargins:[I

    const/4 v1, 0x0

    .line 1047
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mLimitDivider:Z

    .line 135
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/material/R$styleable;->Appbar:[I

    sget v4, Lcom/google/android/material/appbar/Appbar;->DEFAULT_STYLE:I

    invoke-static {v2, p2, v3, p3, v4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v2

    .line 137
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 138
    sget-object v7, Lcom/google/android/material/R$styleable;->Appbar:[I

    .line 140
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v9

    sget v11, Lcom/google/android/material/appbar/Appbar;->DEFAULT_STYLE:I

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    .line 138
    invoke-virtual/range {v5 .. v11}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 142
    :cond_0
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_android_background:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_android_background:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleTextAppearance:I

    sget p2, Lcom/google/android/material/R$style;->op_control_text_style_h5:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextAppearance:I

    .line 147
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_subtitleTextAppearance:I

    sget p2, Lcom/google/android/material/R$style;->op_control_text_style_body1:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextAppearance:I

    .line 148
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_android_gravity:I

    iget p2, p0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    .line 149
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleMode:I

    const/4 p2, 0x1

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mMode:I

    if-eq p1, p2, :cond_3

    if-eq p1, v0, :cond_2

    .line 158
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    goto :goto_0

    .line 155
    :cond_2
    iput-boolean p2, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    goto :goto_0

    .line 152
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    .line 162
    :goto_0
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleMargin:I

    invoke-virtual {v2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 163
    sget p2, Lcom/google/android/material/R$styleable;->Appbar_titleMargins:I

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 165
    sget p2, Lcom/google/android/material/R$styleable;->Appbar_titleMargins:I

    invoke-virtual {v2, p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 167
    :cond_4
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    .line 169
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleMarginStart:I

    const/4 p2, -0x1

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_5

    .line 171
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    .line 174
    :cond_5
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleMarginEnd:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_6

    .line 176
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    .line 179
    :cond_6
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleMarginTop:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_7

    .line 181
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    .line 184
    :cond_7
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleMarginBottom:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_8

    .line 187
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    .line 189
    :cond_8
    iget-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-eqz p1, :cond_9

    const p1, 0x800033

    .line 190
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    .line 193
    :cond_9
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_maxButtonHeight:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mMaxButtonHeight:I

    .line 195
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_collapseIcon:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 196
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_collapseContentDescription:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 198
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_title:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    :cond_a
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_subtitle:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_b
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_navigationIcon:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 210
    iput v1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_c
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_navigationContentDescription:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    :cond_d
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleTextColor:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 218
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_titleTextColor:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_e
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_subtitleTextColor:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 222
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_subtitleTextColor:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 225
    :cond_f
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_android_minHeight:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mMinHeight:I

    .line 226
    iget-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-eqz p1, :cond_10

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mMinHeight:I

    .line 230
    :cond_10
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_dividerColor:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 231
    sget p1, Lcom/google/android/material/R$styleable;->Appbar_dividerColor:I

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mDividerColor:I

    goto :goto_1

    .line 233
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$color;->op_control_divider_color_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mDividerColor:I

    .line 235
    :goto_1
    iget p1, p0, Lcom/google/android/material/appbar/Appbar;->mMinHeight:I

    if-lez p1, :cond_12

    .line 236
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 239
    :cond_12
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1448
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1449
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1451
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 1450
    invoke-static {p2, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    .line 1453
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 1457
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1459
    iget v2, v1, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1460
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/Appbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1461
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    .line 1466
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1468
    iget v4, v2, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1469
    invoke-direct {p0, v2}, Lcom/google/android/material/appbar/Appbar;->getChildHorizontalGravity(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 1470
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private addDividerLine()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    .line 257
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 258
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/Appbar;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/Appbar;->addSystemView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 2

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/google/android/material/appbar/Appbar;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/Appbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/Appbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 848
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/Appbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/Appbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_1
    check-cast v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    .line 852
    iput v1, v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    if-eqz p2, :cond_2

    .line 855
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 858
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .line 818
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/R$attr;->appbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 821
    new-instance v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 822
    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 823
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 824
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 3

    .line 1477
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    .line 1478
    invoke-static {p1, p0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 5

    .line 1397
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 1399
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 1400
    :goto_0
    iget v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lcom/google/android/material/appbar/Appbar;->getChildVerticalGravity(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    .line 1410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 1411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 1412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 1414
    div-int/lit8 v3, v3, 0x2

    .line 1415
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    .line 1420
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_2

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    .line 1421
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_2
    :goto_1
    add-int/2addr p2, v3

    return p2

    .line 1405
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    .line 1402
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private getChildVerticalGravity(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 1436
    iget p0, p0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    and-int/lit8 p0, p0, 0x70

    return p0

    :cond_0
    return p1
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 0

    .line 1495
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1496
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    .line 1497
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 0

    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1502
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1352
    aget v0, p2, p0

    const/4 v1, 0x1

    .line 1353
    aget p2, p2, v1

    .line 1355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1357
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1358
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1359
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v0

    .line 1360
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, p2

    .line 1361
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1362
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    .line 1363
    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v0, v0

    .line 1364
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1365
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr p2, v4

    add-int/2addr p2, v5

    add-int/2addr v3, p2

    add-int/lit8 v2, v2, 0x1

    move p2, v0

    move v0, v6

    goto :goto_0

    :cond_0
    return v3
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1

    .line 1558
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 4

    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1373
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1374
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 1375
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 1376
    invoke-direct {p0, p1, p4}, Lcom/google/android/material/appbar/Appbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    .line 1377
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, p2, p3

    .line 1378
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p2, p0, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1379
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 5

    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1386
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 1387
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 1388
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 1389
    invoke-direct {p0, p1, p4}, Lcom/google/android/material/appbar/Appbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    .line 1391
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 1392
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    .line 991
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 993
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 994
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 995
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 996
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 998
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 999
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 1002
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1001
    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1004
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1003
    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1007
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    .line 1008
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 3

    .line 966
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 969
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 968
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 972
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 971
    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 975
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_1

    if-ltz p6, :cond_1

    if-eqz p3, :cond_0

    .line 978
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 980
    :cond_0
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 982
    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1015
    iget-boolean v0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1017
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1019
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1020
    invoke-direct {p0, v3}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1021
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1491
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1530
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 929
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isExistSynsText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 934
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 937
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method ensureCollapseButtonView()V
    .locals 4

    .line 830
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/R$attr;->appbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 833
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 835
    invoke-virtual {p0}, Lcom/google/android/material/appbar/Appbar;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/Appbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 836
    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    .line 837
    iput v1, v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    .line 838
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/appbar/Appbar;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/Appbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/Appbar$LayoutParams;
    .locals 1

    .line 1525
    new-instance p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/Appbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/Appbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/Appbar$LayoutParams;
    .locals 1

    .line 1507
    new-instance v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/Appbar$LayoutParams;
    .locals 0

    .line 1512
    instance-of p0, p1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    if-eqz p0, :cond_0

    .line 1513
    new-instance p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    check-cast p1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(Lcom/google/android/material/appbar/Appbar$LayoutParams;)V

    return-object p0

    .line 1514
    :cond_0
    instance-of p0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz p0, :cond_1

    .line 1515
    new-instance p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object p0

    .line 1516
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 1517
    new-instance p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 1519
    :cond_2
    new-instance p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/Appbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDividerView()Landroid/view/View;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 1029
    iget-boolean p0, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final getSubtitleTextView()Landroid/widget/TextView;
    .locals 0

    .line 1588
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleMarginBottom()I
    .locals 0

    .line 386
    iget p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    return p0
.end method

.method public getTitleMarginEnd()I
    .locals 0

    .line 364
    iget p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    return p0
.end method

.method public getTitleMarginStart()I
    .locals 0

    .line 320
    iget p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    return p0
.end method

.method public getTitleMarginTop()I
    .locals 0

    .line 342
    iget p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    return p0
.end method

.method final getTitleTextView()Landroid/widget/TextView;
    .locals 0

    .line 1579
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getWrapper()Lcom/google/android/material/appbar/DecorAppbar;
    .locals 2

    .line 1542
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mWrapper:Lcom/google/android/material/appbar/AppbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 1543
    new-instance v0, Lcom/google/android/material/appbar/AppbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/appbar/AppbarWidgetWrapper;-><init>(Lcom/google/android/material/appbar/Appbar;Z)V

    iput-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mWrapper:Lcom/google/android/material/appbar/AppbarWidgetWrapper;

    .line 1545
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mWrapper:Lcom/google/android/material/appbar/AppbarWidgetWrapper;

    return-object p0
.end method

.method public limitDividerShown(Z)V
    .locals 0

    .line 1050
    iput-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mLimitDivider:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 244
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 245
    iget v0, p0, Lcom/google/android/material/appbar/Appbar;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->op_app_bar_height_with_tab:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 898
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1055
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1056
    iget-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mLimitDivider:Z

    if-nez p1, :cond_0

    .line 1057
    invoke-direct {p0}, Lcom/google/android/material/appbar/Appbar;->addDividerLine()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 947
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mEatingHover:Z

    .line 950
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/appbar/Appbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 951
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 953
    iput-boolean v4, p0, Lcom/google/android/material/appbar/Appbar;->mEatingHover:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 958
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 1163
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1164
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 1168
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 1173
    iget-object v11, v0, Lcom/google/android/material/appbar/Appbar;->mTempMargins:[I

    .line 1174
    aput v3, v11, v2

    aput v3, v11, v3

    .line 1177
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    .line 1178
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v3

    .line 1180
    :goto_1
    iget-object v13, v0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    .line 1182
    iget-object v13, v0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_2

    .line 1185
    :cond_2
    iget-object v13, v0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v6

    .line 1190
    :goto_3
    iget-object v14, v0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v1, :cond_4

    .line 1192
    iget-object v14, v0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14, v10, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_4

    .line 1195
    :cond_4
    iget-object v14, v0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14, v13, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 1200
    :cond_5
    :goto_4
    iget-object v14, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 1201
    iget-object v15, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v15}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v14, :cond_6

    .line 1204
    iget-object v2, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1205
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v7

    iget-object v7, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    const/4 v2, 0x0

    add-int/2addr v3, v2

    goto :goto_5

    :cond_6
    move/from16 p4, v7

    const/4 v3, 0x0

    :goto_5
    if-eqz v15, :cond_7

    .line 1208
    iget-object v2, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1209
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v7, v4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v2

    add-int/2addr v3, v7

    goto :goto_6

    :cond_7
    move/from16 v16, v4

    :goto_6
    if-nez v14, :cond_9

    if-eqz v15, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v17, v6

    move/from16 p3, v12

    goto/16 :goto_13

    :cond_9
    :goto_7
    if-eqz v14, :cond_a

    .line 1214
    iget-object v2, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_8
    if-eqz v15, :cond_b

    .line 1215
    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_b
    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1216
    :goto_9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1217
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    if-eqz v14, :cond_c

    .line 1218
    iget-object v7, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_d

    :cond_c
    if-eqz v15, :cond_e

    iget-object v7, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1219
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_e

    :cond_d
    move/from16 v17, v6

    const/4 v7, 0x1

    goto :goto_a

    :cond_e
    move/from16 v17, v6

    const/4 v7, 0x0

    .line 1221
    :goto_a
    iget v6, v0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    and-int/lit8 v6, v6, 0x70

    move/from16 p3, v12

    const/16 v12, 0x30

    if-eq v6, v12, :cond_12

    const/16 v12, 0x50

    if-eq v6, v12, :cond_11

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v3

    .line 1228
    div-int/lit8 v6, v6, 0x2

    .line 1229
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p5, v13

    iget v13, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    move/from16 v18, v15

    add-int v15, v12, v13

    if-ge v6, v15, :cond_f

    add-int v6, v12, v13

    goto :goto_b

    :cond_f
    sub-int v9, v5, v9

    sub-int/2addr v9, v3

    sub-int/2addr v9, v6

    sub-int/2addr v9, v8

    .line 1234
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    if-ge v9, v2, :cond_10

    .line 1235
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v9

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_10
    :goto_b
    add-int/2addr v8, v6

    goto :goto_c

    :cond_11
    move/from16 p5, v13

    move/from16 v18, v15

    sub-int v2, v5, v9

    .line 1242
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    sub-int/2addr v2, v4

    sub-int v8, v2, v3

    goto :goto_c

    :cond_12
    move/from16 p5, v13

    move/from16 v18, v15

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    add-int v8, v3, v2

    :goto_c
    if-eqz v1, :cond_17

    if-eqz v7, :cond_13

    .line 1247
    iget v1, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x1

    aget v3, v11, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 1248
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v1, v1

    .line 1249
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v14, :cond_14

    .line 1254
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1255
    iget-object v2, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    .line 1256
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1257
    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1258
    iget v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    sub-int/2addr v2, v4

    .line 1259
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_e

    :cond_14
    move v2, v10

    :goto_e
    if-eqz v18, :cond_15

    .line 1262
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1263
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 1264
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    .line 1265
    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1266
    iget-object v6, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1267
    iget v3, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    sub-int v3, v10, v3

    .line 1268
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_f

    :cond_15
    move v3, v10

    :goto_f
    if-eqz v7, :cond_16

    .line 1271
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_16
    move/from16 v13, p5

    goto :goto_13

    :cond_17
    if-eqz v7, :cond_18

    .line 1274
    iget v1, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    :goto_10
    const/4 v2, 0x0

    aget v3, v11, v2

    sub-int/2addr v1, v3

    .line 1275
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v13, p5, v3

    neg-int v1, v1

    .line 1276
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v14, :cond_19

    .line 1281
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1282
    iget-object v2, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v13

    .line 1283
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1284
    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v13, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1285
    iget v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    add-int/2addr v2, v4

    .line 1286
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_11

    :cond_19
    move v2, v13

    :goto_11
    if-eqz v18, :cond_1a

    .line 1289
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1290
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 1291
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v13

    .line 1292
    iget-object v4, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1293
    iget-object v6, v0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v13, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1294
    iget v4, v0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    add-int/2addr v3, v4

    .line 1295
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_12

    :cond_1a
    move v3, v13

    :goto_12
    if-eqz v7, :cond_1b

    .line 1298
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1307
    :cond_1b
    :goto_13
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/Appbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1308
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1c

    .line 1310
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v12, p3

    invoke-direct {v0, v3, v13, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1c
    move/from16 v12, p3

    .line 1314
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/Appbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1315
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_1d

    .line 1317
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1323
    :cond_1d
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/Appbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1324
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v11}, Lcom/google/android/material/appbar/Appbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v1

    sub-int v4, v16, v17

    sub-int v4, v4, p4

    .line 1325
    div-int/lit8 v4, v4, 0x2

    add-int v6, v17, v4

    .line 1326
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v6, v2

    add-int/2addr v1, v6

    if-ge v6, v13, :cond_1e

    goto :goto_16

    :cond_1e
    if-le v1, v10, :cond_1f

    sub-int/2addr v1, v10

    sub-int v13, v6, v1

    goto :goto_16

    :cond_1f
    move v13, v6

    .line 1335
    :goto_16
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_20

    .line 1337
    iget-object v3, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v13, v11, v12}, Lcom/google/android/material/appbar/Appbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1342
    :cond_20
    iget-boolean v1, v0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-nez v1, :cond_21

    .line 1343
    iget-object v1, v0, Lcom/google/android/material/appbar/Appbar;->mDividerLine:Landroid/view/View;

    if-eqz v1, :cond_21

    add-int/lit8 v2, v5, -0x2

    move/from16 v3, v16

    const/4 v4, 0x0

    .line 1344
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 1348
    :cond_21
    iget-object v0, v0, Lcom/google/android/material/appbar/Appbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    .line 1067
    iget-object v8, v7, Lcom/google/android/material/appbar/Appbar;->mTempMargins:[I

    .line 1070
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 1077
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/google/android/material/appbar/Appbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/Appbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1080
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/google/android/material/appbar/Appbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1082
    invoke-direct {v7, v2}, Lcom/google/android/material/appbar/Appbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1081
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1083
    iget-object v2, v7, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1084
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    .line 1083
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v11, v1

    move v12, v2

    goto :goto_0

    :cond_0
    move v0, v10

    move v11, v0

    move v12, v11

    .line 1087
    :goto_0
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/google/android/material/appbar/Appbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/Appbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1090
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1091
    invoke-direct {v7, v1}, Lcom/google/android/material/appbar/Appbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1092
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1093
    invoke-direct {v7, v2}, Lcom/google/android/material/appbar/Appbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1092
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1094
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1095
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 1094
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1099
    :cond_1
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v10

    rsub-int/lit8 v0, v0, 0x0

    .line 1100
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v9

    .line 1102
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v14, v10

    move v13, v12

    move v12, v11

    move v11, v1

    :goto_1
    if-ge v14, v9, :cond_4

    .line 1104
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1105
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;

    .line 1106
    iget v0, v0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_3

    invoke-direct {v7, v15}, Lcom/google/android/material/appbar/Appbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    .line 1111
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/Appbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    .line 1113
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v7, v15}, Lcom/google/android/material/appbar/Appbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1114
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v12, v0

    move v13, v1

    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1119
    :cond_4
    iget v0, v7, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    add-int v9, v0, v1

    .line 1120
    iget v0, v7, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    add-int v14, v0, v1

    .line 1121
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    add-int v3, v11, v14

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v9

    move-object v6, v8

    .line 1122
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/Appbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1125
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/google/android/material/appbar/Appbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1126
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/google/android/material/appbar/Appbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1127
    iget-object v2, v7, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    move v15, v1

    move v6, v13

    move v13, v0

    goto :goto_3

    :cond_5
    move v15, v10

    move v6, v13

    move v13, v15

    .line 1129
    :goto_3
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1130
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v7, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    .line 1131
    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v11, v14

    add-int v5, v15, v9

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/appbar/Appbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1135
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1136
    invoke-direct {v7, v1}, Lcom/google/android/material/appbar/Appbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 1137
    iget-object v0, v7, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1138
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 1137
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_4

    :cond_6
    move v9, v6

    :goto_4
    add-int/2addr v11, v13

    .line 1142
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1145
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    .line 1147
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 1150
    iget-boolean v2, v7, Lcom/google/android/material/appbar/Appbar;->mInScrolling:Z

    if-eqz v2, :cond_7

    .line 1151
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    goto :goto_5

    .line 1153
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_5
    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 1155
    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1158
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/appbar/Appbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move v10, v0

    :goto_6
    invoke-virtual {v7, v1, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 886
    instance-of v0, p1, Lcom/google/android/material/appbar/Appbar$SavedState;

    if-nez v0, :cond_0

    .line 887
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 891
    :cond_0
    check-cast p1, Lcom/google/android/material/appbar/Appbar$SavedState;

    .line 892
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 864
    new-instance v0, Lcom/google/android/material/appbar/Appbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/Appbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 910
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mEatingTouch:Z

    .line 913
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/appbar/Appbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 914
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 916
    iput-boolean v3, p0, Lcom/google/android/material/appbar/Appbar;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 921
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/google/android/material/appbar/Appbar;->ensureCollapseButtonView()V

    .line 767
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    .line 768
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    .line 795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/google/android/material/appbar/Appbar;->ensureCollapseButtonView()V

    .line 811
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 812
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 813
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 1569
    iput-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mCollapsible:Z

    .line 1570
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    .line 877
    sget p1, Lcom/google/android/material/R$drawable;->ic_title_bar_back:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setNavigationIcon(I)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_control_margin_screen_left3:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    const/4 p1, 0x0

    .line 880
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 871
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 1034
    iput-boolean p1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    const p1, 0x800033

    .line 1035
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mGravity:I

    .line 1036
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_app_bar_margin_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    .line 1037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    .line 1038
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mMinHeight:I

    .line 1039
    iget-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1040
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$style;->op_control_text_style_h1:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1041
    iget-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1043
    :cond_0
    iget p1, p0, Lcom/google/android/material/appbar/Appbar;->mMinHeight:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/google/android/material/appbar/Appbar;->ensureNavButtonView()V

    .line 647
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    .line 648
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 667
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/google/android/material/appbar/Appbar;->ensureNavButtonView()V

    .line 687
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/Appbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 692
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 694
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    .line 695
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/google/android/material/appbar/Appbar;->ensureNavButtonView()V

    .line 722
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-nez v0, :cond_1

    .line 515
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 516
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 517
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 518
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 519
    iget v1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 520
    iget-object v2, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 523
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/Appbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v0, :cond_4

    .line 534
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 536
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 557
    iput p2, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextAppearance:I

    .line 558
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 559
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    .line 590
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 600
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-nez v0, :cond_2

    .line 453
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 454
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    .line 455
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 456
    iget v1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-nez v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 459
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/appbar/Appbar;->mLargeMode:Z

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$style;->op_control_text_style_h1:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 461
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 466
    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/Appbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_1

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/Appbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 476
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v0, :cond_5

    .line 477
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 479
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginBottom:I

    .line 398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginEnd:I

    .line 377
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .line 331
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginStart:I

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleMarginTop:I

    .line 355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 546
    iput p2, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextAppearance:I

    .line 547
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 548
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 569
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 579
    iget-object p0, p0, Lcom/google/android/material/appbar/Appbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 580
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
