.class public Lcom/google/android/material/tabbar/TabBarView;
.super Landroid/widget/HorizontalScrollView;
.source "TabBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;,
        Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;,
        Lcom/google/android/material/tabbar/TabBarView$SavedState;,
        Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;,
        Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private isInitLine:Z

.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mPlayAnimation:Z

.field private mSelectMenuPosition:I

.field private mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

.field private final mUnCheckTintColor:Landroid/content/res/ColorStateList;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private menuItem:Landroid/view/MenuItem;

.field final menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

.field private pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

.field private final presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

.field private reselectedListener:Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private selectedListener:Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;

.field private setupViewPagerImplicitly:Z

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    sget v0, Lcom/google/android/material/R$style;->OnePlusTabBarViewStyle:I

    sput v0, Lcom/google/android/material/tabbar/TabBarView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabbar/TabBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 138
    sget v0, Lcom/google/android/material/R$attr;->tabBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabbar/TabBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 143
    sget v0, Lcom/google/android/material/tabbar/TabBarView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance p1, Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-direct {p1}, Lcom/google/android/material/tabbar/TabBarPresenter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarView;->mPlayAnimation:Z

    .line 145
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/google/android/material/tabbar/TabBarMenu;

    invoke-direct {v2, v1}, Lcom/google/android/material/tabbar/TabBarMenu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 150
    new-instance v2, Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-direct {v2, v1}, Lcom/google/android/material/tabbar/TabBarMenuView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    .line 151
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->design_tab_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 154
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 155
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 156
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 157
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    iget-object v7, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v5, v7}, Lcom/google/android/material/tabbar/TabBarPresenter;->setTabBarMenuView(Lcom/google/android/material/tabbar/TabBarMenuView;)V

    .line 161
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {v5, p1}, Lcom/google/android/material/tabbar/TabBarPresenter;->setId(I)V

    .line 162
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    iget-object v7, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {v5, v7}, Lcom/google/android/material/tabbar/TabBarMenuView;->setPresenter(Lcom/google/android/material/tabbar/TabBarPresenter;)V

    .line 163
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 164
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/tabbar/TabBarPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 167
    sget-object v5, Lcom/google/android/material/R$styleable;->TabBarView:[I

    invoke-virtual {v1, p2, v5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 170
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 171
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    sget v0, Lcom/google/android/material/R$styleable;->TabBarView_itemIconTint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    const v0, 0x1010038

    .line 174
    invoke-virtual {p3, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 173
    invoke-virtual {p3, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 177
    :goto_0
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_itemIconSize:I

    .line 180
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/google/android/material/R$dimen;->design_tab_bar_icon_size:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 178
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 177
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabbar/TabBarView;->setItemIconSize(I)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_tabs_default_indicator:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_2

    .line 184
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/tabbar/TabBarView;->createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p3

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_2
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 188
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_3
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_backgroundTint:I

    .line 192
    invoke-static {v1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 194
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 195
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_itemLineColor:I

    invoke-static {v1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mUnCheckTintColor:Landroid/content/res/ColorStateList;

    .line 197
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_tabVisibilityMode:I

    .line 198
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 197
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabbar/TabBarView;->setLabelVisibilityMode(I)V

    .line 201
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_itemTabHorizontalTranslationEnabled:I

    .line 202
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 201
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabbar/TabBarView;->setItemHorizontalTranslationEnabled(Z)V

    .line 203
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_itemSwitchAnimDisplay:I

    .line 204
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 203
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabbar/TabBarView;->setInitWithAnim(Z)V

    .line 205
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_itemBackground:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_4

    .line 207
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p3}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackgroundRes(I)V

    .line 215
    :cond_4
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_menu:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 216
    sget p3, Lcom/google/android/material/R$styleable;->TabBarView_menu:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/tabbar/TabBarView;->inflateMenu(I)V

    .line 219
    :cond_5
    new-instance p3, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    invoke-direct {p3, p0, v1}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;-><init>(Lcom/google/android/material/tabbar/TabBarView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    .line 221
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/google/android/material/R$dimen;->design_tab_bar_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    iput v3, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    invoke-virtual {p0, v0, v6, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->design_tab_bar_indicator_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 231
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    sget v0, Lcom/google/android/material/R$styleable;->TabBarView_itemTabRippleColor:I

    .line 232
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 231
    invoke-virtual {p3, v0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 233
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p3}, Lcom/google/android/material/tabbar/TabBarView;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-boolean p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mPlayAnimation:Z

    if-eqz p3, :cond_6

    .line 235
    new-instance p3, Lcom/google/android/material/tabbar/TabBarView$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/tabbar/TabBarView$1;-><init>(Lcom/google/android/material/tabbar/TabBarView;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, p3, v3, v4}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 246
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarView;->isInitLine:Z

    .line 247
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    iget p3, p3, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1}, Lcom/google/android/material/tabbar/TabBarView;->setScrollPosition(IFZ)V

    .line 249
    :goto_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p3, v0, :cond_7

    .line 250
    invoke-direct {p0, v1}, Lcom/google/android/material/tabbar/TabBarView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 252
    :cond_7
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    iget-object p2, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance p3, Lcom/google/android/material/tabbar/TabBarView$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/tabbar/TabBarView$2;-><init>(Lcom/google/android/material/tabbar/TabBarView;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 273
    iput v6, p0, Lcom/google/android/material/tabbar/TabBarView;->mSelectMenuPosition:I

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarView;->updateTabViews(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/tabbar/TabBarView;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/google/android/material/tabbar/TabBarView;->isInitLine:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/material/tabbar/TabBarView;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarView;->isInitLine:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->reselectedListener:Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/tabbar/TabBarView;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabbar/TabBarView;->doSelectItemAnim(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->selectedListener:Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/tabbar/TabBarView;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->mUnCheckTintColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/tabbar/TabBarView;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 3

    .line 705
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 706
    sget v1, Lcom/google/android/material/R$color;->design_tab_bar_shadow_color:I

    .line 707
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 706
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 708
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 711
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->design_tab_bar_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 712
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 934
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    .line 935
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    .line 936
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 942
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v2, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 946
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_3

    add-int/2addr p1, p2

    goto :goto_2

    :cond_3
    sub-int/2addr p1, p2

    :goto_2
    return p1
.end method

.method private createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 387
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 388
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 389
    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 390
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 391
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 390
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 393
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    return-object v0
.end method

.method private doSelectItemAnim(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 282
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 283
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-ne v2, p2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabbar/TabBarView;->selectTab(I)V

    .line 290
    iget p1, p0, Lcom/google/android/material/tabbar/TabBarView;->mSelectMenuPosition:I

    if-eq v1, p1, :cond_2

    .line 291
    invoke-direct {p0, v1}, Lcom/google/android/material/tabbar/TabBarView;->setupwithVPAnimate(I)V

    .line 293
    :cond_2
    iput v1, p0, Lcom/google/android/material/tabbar/TabBarView;->mSelectMenuPosition:I

    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 900
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 902
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 903
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 904
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/tabbar/TabBarView$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabbar/TabBarView$5;-><init>(Lcom/google/android/material/tabbar/TabBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private findCollapsingAppbarLayout(Landroid/view/ViewGroup;)Lcom/google/android/material/appbar/CollapsingAppbarLayout;
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1072
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1073
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1074
    instance-of v3, v2, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v3, :cond_0

    .line 1075
    check-cast v2, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    return-object v2

    .line 1076
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 1077
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/google/android/material/tabbar/TabBarView;->findCollapsingAppbarLayout(Landroid/view/ViewGroup;)Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuInflater:Landroid/view/MenuInflater;

    .line 720
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method

.method private getTabMinWidth()I
    .locals 1

    .line 1207
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x4e

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    .line 963
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 962
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .line 915
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 918
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 919
    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v2, p1, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    .line 920
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v5, v1

    .line 921
    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_3

    :cond_2
    if-ne v2, p1, :cond_3

    .line 924
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 925
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 1052
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1055
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    if-nez v0, :cond_1

    .line 1056
    new-instance v0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    invoke-direct {v0, p0, p0}, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;-><init>(Lcom/google/android/material/tabbar/TabBarView;Lcom/google/android/material/tabbar/TabBarView;)V

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    invoke-virtual {v0}, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->reset()V

    .line 1059
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1062
    iget-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarView;->isInitLine:Z

    if-eqz v0, :cond_2

    .line 1063
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/tabbar/TabBarView;->setScrollPosition(IFZ)V

    .line 1067
    :cond_2
    iput-boolean p2, p0, Lcom/google/android/material/tabbar/TabBarView;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private setupwithVPAnimate(I)V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v1, v0, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz v1, :cond_3

    .line 823
    check-cast v0, Landroidx/fragment/app/FragmentPagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 824
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 825
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 826
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarView;->findCollapsingAppbarLayout(Landroid/view/ViewGroup;)Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 828
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setPrepareDraw(Z)V

    .line 829
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 830
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 834
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/tabbar/TabBarView$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/tabbar/TabBarView$4;-><init>(Lcom/google/android/material/tabbar/TabBarView;Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 845
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x145

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 846
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 1211
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    .line 1212
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1213
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    .line 1215
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 1216
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public animateToTab(I)V
    .locals 6

    if-ltz p1, :cond_4

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 877
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 878
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 885
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 886
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/tabbar/TabBarView;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 889
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView;->ensureScrollAnimator()V

    .line 891
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 892
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 896
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    const/16 v0, 0x145

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    .line 881
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/material/tabbar/TabBarView;->setScrollPosition(IFZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getItemIconSize()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getLabelVisibilityMode()I

    move-result p0

    return p0
.end method

.method public getMaxItemCount()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    .line 460
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 461
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    .line 462
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabbar/TabBarPresenter;->updateMenuView(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 399
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 401
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 407
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabbar/TabBarView;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 734
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 735
    iget-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarView;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarView;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v1, 0x0

    .line 738
    iput-boolean v1, p0, Lcom/google/android/material/tabbar/TabBarView;->setupViewPagerImplicitly:Z

    .line 739
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {v1}, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->onDestory()V

    .line 741
    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->pageChangeListener:Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 304
    iget-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarView;->isInitLine:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabbar/TabBarPresenter;->updateMenuView(Z)V

    .line 307
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 314
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 315
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 323
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 318
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 330
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    .line 338
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 340
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_5

    .line 343
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_4

    move v4, v5

    :cond_4
    if-eqz v4, :cond_5

    .line 351
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    invoke-static {p2, v0, v1}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 355
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 356
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_5
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 748
    instance-of v0, p1, Lcom/google/android/material/tabbar/TabBarView$SavedState;

    if-nez v0, :cond_0

    .line 749
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 752
    :cond_0
    check-cast p1, Lcom/google/android/material/tabbar/TabBarView$SavedState;

    .line 753
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 754
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p1, p1, Lcom/google/android/material/tabbar/TabBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 725
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 726
    new-instance v1, Lcom/google/android/material/tabbar/TabBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/tabbar/TabBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/tabbar/TabBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 728
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public selectTab(I)V
    .locals 2

    if-ltz p1, :cond_2

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 808
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarView;->animateToTab(I)V

    .line 809
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 810
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 814
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuItem:Landroid/view/MenuItem;

    const/4 p0, 0x1

    .line 815
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 423
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 425
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setInitWithAnim(Z)V
    .locals 0

    .line 1036
    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarView;->mPlayAnimation:Z

    .line 1037
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    if-eqz p0, :cond_0

    .line 1038
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->displayAnim(Z)V

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 575
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 666
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 512
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 599
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    .line 601
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 604
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 606
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 608
    :cond_3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x3727c5ac    # 1.0E-5f

    .line 611
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 612
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 613
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 614
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->setLabelVisibilityMode(I)V

    .line 647
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabbar/TabBarPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 3

    .line 1027
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1028
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 1029
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    .line 1030
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/tabbar/TabBarPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 1031
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    .line 1032
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setOnTabItemReselectedListener(Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->reselectedListener:Lcom/google/android/material/tabbar/TabBarView$OnTabItemReselectedListener;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 952
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabbar/TabBarView;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 8

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 971
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_7

    .line 972
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v2, v1, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz v2, :cond_3

    .line 979
    check-cast v1, Landroidx/fragment/app/FragmentPagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 980
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 981
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 982
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/google/android/material/tabbar/TabBarView;->findCollapsingAppbarLayout(Landroid/view/ViewGroup;)Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 984
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleAlpha(I)V

    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 987
    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 988
    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarView;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    check-cast v2, Landroidx/fragment/app/FragmentPagerAdapter;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 989
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 990
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 991
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/google/android/material/tabbar/TabBarView;->findCollapsingAppbarLayout(Landroid/view/ViewGroup;)Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    const-wide v2, 0x406fe00000000000L    # 255.0

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 993
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleAlpha(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 1001
    iget-object p4, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 1005
    :cond_4
    iget-object p4, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1006
    iget-object p4, p0, Lcom/google/android/material/tabbar/TabBarView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1008
    :cond_5
    iget-object p4, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p4

    const/4 v1, 0x6

    if-le p4, v1, :cond_6

    .line 1009
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabbar/TabBarView;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_6
    if-eqz p3, :cond_7

    .line 1013
    invoke-direct {p0, v0}, Lcom/google/android/material/tabbar/TabBarView;->setSelectedTabView(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 639
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 363
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView;->mSlidingTabIndicator:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTabItemSelectedListener(Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->selectedListener:Lcom/google/android/material/tabbar/TabBarView$OnTabItemSelectedListener;

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1018
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabbar/TabBarView;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 958
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1196
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1199
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/google/android/material/tabbar/TabBarView;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1201
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
