.class public Lcom/google/android/material/appbar/CollapsingAppbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingAppbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAYLT_RES_STYLE:I


# instance fields
.field private appbar:Lcom/google/android/material/appbar/Appbar;

.field final collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field private isOverFling:Z

.field lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private final mAppbarHeight:I

.field private mCollapsed:Z

.field private mCollapsedSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTitleTextColor:Landroid/content/res/ColorStateList;

.field private mDisableCollapsed:Z

.field private mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

.field private mExpandSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTitleTextColor:Landroid/content/res/ColorStateList;

.field private mFraction:F

.field private mImageView:Landroid/widget/ImageView;

.field private mPrepareDraw:Z

.field private mStillDisScroll:Z

.field private mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mSyncText:Ljava/lang/CharSequence;

.field private mSyncTextView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private menuMargin:I

.field private menuToolbar:Landroidx/appcompat/widget/Toolbar;

.field private minHeight:I

.field private onCollapsedSyncListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

.field private onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshTitlebar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private syncSubtitile:Ljava/lang/CharSequence;

.field private titlebarDirectChild:Landroid/view/View;

.field private final tmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_CollapsingAppbarLayout:I

    sput v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->DEFAYLT_RES_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 136
    sget v0, Lcom/google/android/material/R$attr;->collapsingAppbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 99
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 114
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    const/4 v2, 0x0

    .line 116
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    .line 117
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    iput v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mFraction:F

    .line 141
    new-instance v3, Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-direct {v3, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    iput-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    .line 142
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    sget-object v7, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout:[I

    sget v9, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->DEFAYLT_RES_STYLE:I

    new-array v10, v2, [I

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 145
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    .line 153
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 152
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextGravity(I)V

    .line 156
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    .line 157
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 156
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextGravity(I)V

    .line 161
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_drawLineEnabled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setDrawLine(Z)V

    .line 163
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMargin:I

    .line 167
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 170
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 172
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedAppbarHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    .line 177
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 178
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginStart:I

    .line 179
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 181
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 182
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginEnd:I

    .line 183
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    .line 185
    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 186
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginTop:I

    .line 187
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    .line 189
    :cond_3
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 190
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginBottom:I

    .line 191
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    .line 194
    :cond_4
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_titleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    .line 195
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_disableCollapsed:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    .line 197
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_insetSubtitleIconFlag:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isInsetSubtitleImage(Z)V

    .line 199
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_MultiCollapsingTitle_ExpandedTitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    .line 205
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    .line 209
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 210
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextAppearance:I

    .line 211
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 210
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    .line 213
    :cond_5
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 214
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextAppearance:I

    .line 215
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 214
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    .line 217
    :cond_6
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 218
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mExpandedTitleTextColor:Landroid/content/res/ColorStateList;

    .line 219
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_7
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 222
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsedTitleTextColor:Landroid/content/res/ColorStateList;

    .line 223
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 225
    :cond_8
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 226
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mExpandSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 227
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 229
    :cond_9
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 230
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsedSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 231
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 235
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_MultiCollapsingTitle_ExpandedSubtitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    .line 237
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Subtitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    .line 241
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 242
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextAppearance:I

    .line 243
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 242
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    .line 245
    :cond_b
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 246
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextAppearance:I

    .line 247
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 246
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    .line 250
    :cond_c
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitleIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitleIcon:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 253
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawableToSubtitleBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 254
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitleImage(Landroid/graphics/Bitmap;)V

    .line 258
    :cond_d
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_scrimVisibleHeightTrigger:I

    .line 259
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 261
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_scrimAnimationDuration:I

    const/16 p3, 0x1a9

    .line 262
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    .line 266
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_contentScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 267
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_statusBarScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 270
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_minHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    if-lez p2, :cond_e

    .line 272
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 275
    :cond_e
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_f

    .line 276
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 279
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 283
    new-instance p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$1;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/google/android/material/appbar/CollapsingAppbarLayout;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mStillDisScroll:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onCollapsedSyncListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return p0
.end method

.method static synthetic access$802(Lcom/google/android/material/appbar/CollapsingAppbarLayout;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    return-object p0
.end method

.method private animateScrim(I)V
    .locals 4

    .line 959
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 960
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 961
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 962
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 963
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 967
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$3;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 974
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 977
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 978
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureTitlebar()V
    .locals 6

    .line 517
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 522
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 523
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 537
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 538
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 539
    instance-of v5, v4, Lcom/google/android/material/appbar/Appbar;

    if-eqz v5, :cond_1

    .line 540
    check-cast v4, Lcom/google/android/material/appbar/Appbar;

    const/4 v2, 0x1

    .line 541
    invoke-virtual {v4, v2}, Lcom/google/android/material/appbar/Appbar;->limitDividerShown(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 545
    :goto_1
    iput-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 548
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v2, :cond_6

    .line 550
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    .line 551
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 552
    instance-of v5, v4, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 553
    move-object v0, v4

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 557
    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 560
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateDummyView()V

    .line 561
    iput-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    return-void
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 778
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 779
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 780
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 783
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;
    .locals 2

    .line 787
    sget v0, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 790
    sget v1, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isTitlebarChild(Landroid/view/View;)Z
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private setImageViewVisibility(Z)V
    .locals 2

    .line 1437
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1438
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1439
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInsetImage(Z)V

    :cond_1
    return-void
.end method

.method private setSyncCollapsSubTitleNull(Z)V
    .locals 0

    .line 1444
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncCollapsSubtitleNull(Z)V

    return-void
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 1

    .line 1828
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDummyView()V
    .locals 2

    .line 586
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 589
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 593
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 595
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1766
    instance-of p0, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 448
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 449
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mFraction:F

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpansionFraction()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 450
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mFraction:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    .line 453
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitleViewCollapsedTextSize()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    .line 454
    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getIsDrawLineInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 456
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    if-eqz v0, :cond_1

    .line 457
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->drawLine(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .line 465
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 466
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v2, :cond_3

    .line 467
    iget-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez v2, :cond_3

    .line 468
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 469
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_5

    .line 474
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    if-eqz v0, :cond_5

    .line 475
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->draw(Landroid/graphics/Canvas;)V

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v0, :cond_7

    .line 484
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    if-lez v0, :cond_7

    .line 486
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 488
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 491
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpansionFraction()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mFraction:F

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isTitlebarChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 505
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1079
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 1081
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 1084
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1086
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1089
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1090
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    if-eqz v1, :cond_2

    .line 1093
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 1097
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public drawableToSubtitleBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 297
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 300
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 303
    :goto_0
    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 305
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 306
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;
    .locals 1

    .line 1771
    new-instance p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1776
    new-instance v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1781
    new-instance p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCollapsedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1568
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCollapsedSubtitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getCollapsedTitleGravity()I
    .locals 0

    .line 1350
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCollapsedTextGravity()I

    move-result p0

    return p0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1530
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCollapsedTitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1045
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getExpandedSubtitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1585
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedTitleGravity()I
    .locals 0

    .line 1513
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTextGravity()I

    move-result p0

    return p0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 0

    .line 1670
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    return p0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 0

    .line 1651
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    return p0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 0

    .line 1613
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    return p0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 0

    .line 1632
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    return p0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1547
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTitleTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getFraction()F
    .locals 0

    .line 1702
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpansionFraction()F

    move-result p0

    return p0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 2

    .line 1821
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v0

    .line 1822
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 1823
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method getScrimAlpha()I
    .locals 0

    .line 993
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    return p0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1761
    iget-wide v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1729
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    return v0

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1737
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 1740
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1745
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getScrollOffsetHeight()I
    .locals 1

    .line 1189
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    iget p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1277
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSubtitleImageView()Landroid/widget/ImageView;
    .locals 0

    .line 870
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 821
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isDisableCollapsed()Z
    .locals 0

    .line 1718
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return p0
.end method

.method public isDisableScroll()Z
    .locals 0

    .line 1714
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return p0
.end method

.method public isExistSynsText()Z
    .locals 0

    .line 1385
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isExistSyncCloud()Z

    move-result p0

    return p0
.end method

.method public isInsetSubtitleImage(Z)V
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInsetImage(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 314
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 317
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_4

    .line 319
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 321
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 322
    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 324
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 327
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    .line 331
    new-instance v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    .line 332
    iput v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 333
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 336
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    .line 337
    new-instance v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    .line 338
    iput v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 339
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 342
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    .line 343
    new-instance v3, Lcom/google/android/material/appbar/CollapsingAppbarLayout$2;

    invoke-direct {v3, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$2;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    .line 352
    iput v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 353
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextView(Landroid/widget/TextView;)V

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTitleView(Landroid/widget/TextView;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSubTitleView(Landroid/widget/TextView;)V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 407
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 410
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    if-eqz v0, :cond_2

    .line 414
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    .line 417
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 629
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 631
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 633
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 635
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 636
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 637
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 640
    iget-boolean v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez v4, :cond_0

    .line 641
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 649
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez p1, :cond_2

    .line 650
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 651
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 660
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz p1, :cond_18

    .line 664
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v0

    .line 667
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 668
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v2

    .line 669
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v3, v4}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 670
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    .line 671
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 672
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->op_app_bar_height_with_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v1

    if-gt v3, v5, :cond_6

    .line 673
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 675
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 676
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 677
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 678
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_c

    .line 679
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v1, :cond_a

    const/4 v1, 0x2

    if-eq v5, v1, :cond_9

    .line 690
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "net.oneplus.weather"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 691
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_two_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 693
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_three_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 687
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_two_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 684
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_one_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 681
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 697
    :goto_5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setMenuMargin(I)V

    .line 699
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->syncSubtitile:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpansionFraction()F

    move-result v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v5

    if-gez v1, :cond_d

    .line 700
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 702
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 703
    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 704
    invoke-virtual {v7}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginTop()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 705
    invoke-virtual {v8}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/2addr v8, v3

    .line 702
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedBounds(IIII)V

    .line 709
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_e

    .line 710
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 711
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    .line 712
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_6

    :cond_e
    move v1, v0

    .line 716
    :goto_6
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/16 v3, 0x2a

    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 717
    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_f

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    goto :goto_7

    :cond_10
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 718
    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_11

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    :goto_7
    float-to-int v4, v4

    :goto_8
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 719
    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x8

    if-nez v6, :cond_12

    iget v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    goto :goto_9

    :cond_12
    iget v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v6, v8

    :goto_9
    add-int/2addr v5, v6

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 720
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_13

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    goto :goto_a

    :cond_14
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 721
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_15

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    goto :goto_b

    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    :goto_a
    float-to-int p1, p1

    :goto_b
    sub-int/2addr p4, p1

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 722
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_16

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    goto :goto_c

    :cond_16
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_c
    sub-int/2addr p5, p1

    .line 716
    invoke-virtual {v2, v4, v5, p4, p5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedBounds(IIII)V

    .line 724
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 725
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_17

    .line 726
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 727
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setAppbarMargin(IIII)V

    .line 730
    :cond_17
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    .line 735
    :cond_18
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz p1, :cond_1f

    .line 736
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 738
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 739
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 740
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 742
    :cond_19
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 743
    new-instance p2, Landroid/text/SpannableString;

    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 744
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$color;->op_control_accent_color_red_default:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 745
    iget-object p4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/16 p5, 0x11

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 746
    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 751
    :cond_1a
    :goto_d
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_1d

    if-ne p1, p0, :cond_1b

    goto :goto_e

    .line 759
    :cond_1b
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_1c

    .line 760
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 762
    :cond_1c
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 752
    :cond_1d
    :goto_e
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p1, :cond_1e

    .line 753
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 755
    :cond_1e
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 767
    :cond_1f
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    .line 770
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez p1, :cond_20

    .line 771
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_10
    if-ge v0, p1, :cond_20

    .line 772
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 606
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 607
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_0

    .line 608
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 610
    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 613
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 614
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 616
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 617
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-lez v0, :cond_3

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 623
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 510
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 511
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    .line 512
    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 422
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 430
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 435
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public setCollapsedSubtitleTextAppearance(I)V
    .locals 0

    .line 1293
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    return-void
.end method

.method public setCollapsedSubtitleTextColor(I)V
    .locals 0

    .line 1323
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 1333
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 1334
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 0

    .line 1343
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextGravity(I)V

    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 0

    .line 1285
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0

    .line 1302
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1312
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 1313
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1522
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1011
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1012
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1014
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1

    .line 1025
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1

    .line 1035
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentViewVelocity(I)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 373
    instance-of v0, p0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setContentVelocity(I)V

    :cond_0
    return-void
.end method

.method public setDisableCollapsed(Z)V
    .locals 0

    .line 1706
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return-void
.end method

.method public setDisableScroll(Z)V
    .locals 0

    .line 1710
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return-void
.end method

.method public setDrawLineEnabled(Z)V
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setDrawLine(Z)V

    return-void
.end method

.method public setExpandedSubtitleTextAppearance(I)V
    .locals 0

    .line 1456
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    return-void
.end method

.method public setExpandedSubtitleTextColor(I)V
    .locals 0

    .line 1486
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 1496
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 1497
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedSubtitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1577
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setExpandedTitleAlpha(I)V
    .locals 14

    .line 1200
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1201
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1202
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1203
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1207
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1208
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1209
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1210
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1211
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1213
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1214
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 1215
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1216
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1217
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    div-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1218
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1220
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1221
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    new-instance v8, Landroid/content/res/ColorStateList;

    new-array v10, v3, [[I

    const/4 v11, 0x1

    new-array v12, v11, [I

    const v13, 0x101009e

    aput v13, v12, v2

    aput-object v12, v10, v2

    new-array v12, v2, [I

    aput-object v12, v10, v11

    new-array v12, v3, [I

    .line 1225
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v12, v2

    aput v0, v12, v11

    invoke-direct {v8, v10, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1221
    invoke-virtual {v5, v8}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    .line 1228
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v11, [I

    aput v13, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v11

    new-array v5, v3, [I

    .line 1232
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    aput v8, v5, v2

    aput v1, v5, v11

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1228
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1235
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v11, [I

    aput v13, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v11

    new-array v5, v3, [I

    .line 1239
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    aput v8, v5, v2

    aput v6, v5, v11

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1235
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1242
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v11, [I

    aput v13, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v11

    new-array v5, v3, [I

    .line 1246
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    aput v7, v5, v2

    aput v1, v5, v11

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1242
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1249
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v3, [[I

    new-array v4, v11, [I

    aput v13, v4, v2

    aput-object v4, v1, v2

    new-array v4, v2, [I

    aput-object v4, v1, v11

    new-array v3, v3, [I

    .line 1253
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v2

    aput v6, v3, v11

    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1249
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    int-to-float v2, p1

    div-float/2addr v2, v1

    .line 1257
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    int-to-float v2, p1

    div-float/2addr v2, v1

    .line 1260
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    int-to-float v2, p1

    div-float/2addr v2, v1

    .line 1263
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1265
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 1266
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 0

    .line 1506
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextGravity(I)V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1680
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    .line 1681
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1661
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    .line 1662
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1623
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 1624
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1642
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    .line 1643
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 0

    .line 1357
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    return-void
.end method

.method public setExpandedTitleTextColor(I)V
    .locals 0

    .line 1465
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1475
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 1476
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1539
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setOverFling(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return-void
.end method

.method public setPrepareDraw(Z)V
    .locals 0

    .line 1560
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 982
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_0

    .line 985
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 987
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    .line 988
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0

    .line 1754
    iput-wide p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1

    .line 1694
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1695
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 935
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 948
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimsAreShown:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 950
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->animateScrim(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 952
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimAlpha(I)V

    .line 954
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimsAreShown:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1062
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1064
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1065
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1067
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 1068
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1067
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1069
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1070
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1071
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1073
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1

    .line 1128
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1

    .line 1138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    .line 831
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 832
    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 833
    iput v0, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 834
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 838
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setImageDrawable(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setSyncSubtitleAlpha(I)V
    .locals 12

    .line 1142
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1143
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1144
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1145
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1146
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1149
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1150
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1151
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1152
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1153
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1155
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1156
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v8, v3, [[I

    const/4 v9, 0x1

    new-array v10, v9, [I

    const v11, 0x101009e

    aput v11, v10, v2

    aput-object v10, v8, v2

    new-array v10, v2, [I

    aput-object v10, v8, v9

    new-array v10, v3, [I

    .line 1160
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v10, v2

    aput v0, v10, v9

    invoke-direct {v6, v8, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1156
    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    .line 1163
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v9, [I

    aput v11, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v9

    new-array v5, v3, [I

    .line 1167
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aput v6, v5, v2

    aput v1, v5, v9

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1163
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1170
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    new-array v5, v9, [I

    aput v11, v5, v2

    aput-object v5, v4, v2

    new-array v5, v2, [I

    aput-object v5, v4, v9

    new-array v3, v3, [I

    .line 1174
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v3, v2

    aput v1, v3, v9

    invoke-direct {v0, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1170
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    int-to-float v2, p1

    div-float/2addr v2, v1

    .line 1178
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    int-to-float v2, p1

    div-float/2addr v2, v1

    .line 1181
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1183
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 1184
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setSyncTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    .line 1194
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 1195
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 803
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateContentDescriptionFromTitle()V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    .line 908
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 909
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    .line 910
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateContentDescriptionFromTitle()V

    .line 911
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateDummyView()V

    .line 912
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1111
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1112
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1114
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1115
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1816
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
