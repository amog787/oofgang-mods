.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.super Landroidx/preference/Preference;
.source "OPPhoneControlWayCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

.field private mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrIndex:I

.field private mHasInited:Z

.field private mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLayoutResId:I

.field private mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mTempType:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerContainer:Landroid/view/View;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsDeprecated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsNobar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 46
    sget v1, Lcom/android/settings/R$layout;->op_phone_control_way_instructions_category:I

    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    .line 70
    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 71
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 46
    sget v0, Lcom/android/settings/R$layout;->op_phone_control_way_instructions_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    .line 70
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 71
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 46
    sget p3, Lcom/android/settings/R$layout;->op_phone_control_way_instructions_category:I

    iput p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    .line 51
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    .line 52
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    .line 70
    iput p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    .line 71
    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Lcom/google/android/material/indicator/PageIndicator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    return-object p0
.end method

.method private initViewPage()V
    .locals 18

    move-object/from16 v0, p0

    .line 202
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 212
    sget v2, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 213
    sget v4, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 214
    sget v5, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 215
    sget v4, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 216
    sget v5, Lcom/android/settings/R$string;->oneplus_gesture_navigation_bar_summary_for_deprecated:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 218
    sget v4, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 220
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "op_back_gesture_dark_anim.json"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "op_back_gesture_light_anim.json"

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 226
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 228
    sget v4, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 229
    sget v6, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 230
    sget v7, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_title:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 231
    sget v6, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 232
    sget v7, Lcom/android/settings/R$string;->oneplus_gesture_navigation_bar_summary_for_deprecated:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 234
    sget v6, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 236
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v7, "op_back_gesture_dark_anim_no_bar.json"

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_2
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v7, "op_back_gesture_light_anim_no_bar.json"

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 241
    :goto_1
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 242
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 245
    sget v6, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 246
    sget v7, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 247
    sget v8, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_title:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 248
    sget v7, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 249
    sget v8, Lcom/android/settings/R$string;->oneplus_fullscreen_back_guide_summary_deprecated:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 250
    sget v7, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 252
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v7}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 253
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v8, "op_back_gesture_dark_anim_deprecated.json"

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 255
    :cond_3
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v8, "op_back_gesture_light_anim_deprecated.json"

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 257
    :goto_2
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 258
    iget-object v7, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 260
    sget v7, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 261
    sget v8, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 262
    sget v9, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_title:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 263
    sget v8, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 264
    sget v9, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_summary:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 265
    sget v8, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 266
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 267
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v9, "op_home_gesture_dark_anim.json"

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    .line 269
    :cond_4
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v9, "op_home_gesture_light_anim.json"

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 271
    :goto_3
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 272
    iget-object v8, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 275
    sget v8, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 276
    sget v9, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 277
    sget v10, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_title:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 278
    sget v9, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 279
    sget v10, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_summary:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 280
    sget v9, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 281
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 282
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v10, "op_home_gesture_dark_anim_no_bar.json"

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_4

    .line 284
    :cond_5
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v10, "op_home_gesture_light_anim_no_bar.json"

    invoke-virtual {v9, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 286
    :goto_4
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 287
    iget-object v9, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 289
    sget v9, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 290
    sget v10, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 291
    sget v11, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_title:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 292
    sget v10, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 293
    sget v11, Lcom/android/settings/R$string;->oneplus_fullscreen_home_guide_summary_deprecated:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 294
    sget v10, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 295
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 296
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v11, "op_home_gesture_dark_anim_deprecated.json"

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5

    .line 298
    :cond_6
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v11, "op_home_gesture_light_anim_deprecated.json"

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 300
    :goto_5
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 301
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 303
    sget v10, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 304
    sget v11, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 305
    sget v12, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_title:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 306
    sget v11, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 307
    sget v12, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_summary:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 308
    sget v11, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 309
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v11}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 310
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_recent_gesture_dark_anim.json"

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_6

    .line 312
    :cond_7
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_recent_gesture_light_anim.json"

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 314
    :goto_6
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 315
    iget-object v11, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 318
    sget v11, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v11, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 319
    sget v12, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 320
    sget v13, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_title:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 321
    sget v12, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 322
    sget v13, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_summary:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 323
    sget v12, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 324
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 325
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v13, "op_recent_gesture_dark_anim_no_bar.json"

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7

    .line 327
    :cond_8
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v13, "op_recent_gesture_light_anim_no_bar.json"

    invoke-virtual {v12, v13}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 329
    :goto_7
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 330
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 332
    sget v12, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v12, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 333
    sget v13, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 334
    sget v14, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_title:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 335
    sget v13, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 336
    sget v14, Lcom/android/settings/R$string;->oneplus_fullscreen_recent_guide_summary_deprecated:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 337
    sget v13, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 338
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 339
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_recent_gesture_dark_anim_deprecated.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_8

    .line 341
    :cond_9
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_recent_gesture_light_anim_deprecated.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 343
    :goto_8
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v13, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 344
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 346
    sget v13, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 347
    sget v14, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 348
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_guide_title:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 349
    sget v14, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 350
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_guide_summary:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 351
    sget v14, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 352
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 353
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_dark_anim.json"

    invoke-virtual {v14, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_9

    .line 355
    :cond_a
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim.json"

    invoke-virtual {v14, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 357
    :goto_9
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 358
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 361
    sget v14, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    invoke-virtual {v1, v14, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 362
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 363
    sget v3, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_no_bar_guide_title:I

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(I)V

    .line 364
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 365
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_no_bar_guide_summary:I

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 366
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 367
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 368
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_dark_anim_no_bar.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_a

    .line 370
    :cond_b
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim_no_bar.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 372
    :goto_a
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 373
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 375
    sget v3, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 376
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 377
    sget v5, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_no_bar_guide_title:I

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(I)V

    .line 378
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 379
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_previous_app_guide_summary_deprecated:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 380
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 381
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 382
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_dark_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_b

    .line 384
    :cond_c
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 386
    :goto_b
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 387
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 389
    sget v5, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 390
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v3

    .line 391
    sget v3, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_title:I

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(I)V

    .line 392
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 393
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_summary:I

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 394
    sget v3, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 395
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 396
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_c

    .line 398
    :cond_d
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim.json"

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 400
    :goto_c
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 401
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 403
    sget v3, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 404
    sget v15, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v17, v5

    .line 405
    sget v5, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_title:I

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(I)V

    .line 406
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 407
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_summary:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 408
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 409
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 410
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim_no_bar.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_d

    .line 412
    :cond_e
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_no_bar.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 414
    :goto_d
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 415
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 417
    sget v5, Lcom/android/settings/R$layout;->op_fullscreen_gesture_guide_layout_land:I

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 418
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_title:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 419
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_title:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 420
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_summary:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 421
    sget v15, Lcom/android/settings/R$string;->oneplus_fullscreen_landscape_guide_summary_deprecated:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 422
    sget v5, Lcom/android/settings/R$id;->fullscreen_guide_anim:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 423
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 424
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_e

    .line 426
    :cond_f
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_deprecated.json"

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 428
    :goto_e
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 429
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 431
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewGesture()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 441
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_10
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    move-object/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iget p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static is2ButtonEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isGESTURALEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isHideBarEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_fullscreen_gesture_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isSideEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gesture_button_side_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 98
    sget v0, Lcom/android/settings/R$id;->always_show_nb_anim:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_always_show_navigation_bar_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_always_show_navigation_bar_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    :goto_0
    sget v0, Lcom/android/settings/R$id;->gesture_page_indicator:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/indicator/PageIndicator;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    .line 106
    sget v0, Lcom/android/settings/R$id;->gesture_anim_viewpager_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    .line 107
    sget v0, Lcom/android/settings/R$id;->gesture_anim_viewpager:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 108
    new-instance v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 109
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViewPage()V

    .line 110
    new-instance v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 191
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/PageIndicator;->setNumPages(I)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/PageIndicator;->setLocation(F)V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    .line 197
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    const/4 p0, 0x0

    .line 198
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public playCurrentPageAnim(I)V
    .locals 1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 843
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 844
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 845
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 846
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 847
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 849
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 850
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 851
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 852
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 853
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 855
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 856
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 857
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 858
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 859
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 860
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 861
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 862
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 863
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 864
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 865
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 867
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 868
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 869
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 870
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 871
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 873
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 874
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 875
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 876
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 877
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_0

    .line 879
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 880
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 881
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 882
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 883
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 885
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 886
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 887
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 888
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 889
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 891
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 892
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 893
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 894
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 895
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 785
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 786
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 787
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 788
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 789
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 790
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 792
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 793
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 794
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 795
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 796
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 798
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 799
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 800
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 801
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 802
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 803
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 804
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 805
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 806
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 807
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 808
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 810
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 811
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 812
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 813
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 814
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 816
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 817
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 818
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 819
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 820
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 822
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 823
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 824
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 825
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 826
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 828
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 829
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 830
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 831
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 832
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 834
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 835
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 836
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 837
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 838
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 728
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 729
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 730
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 731
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 732
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 733
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 735
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 736
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 737
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 738
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 739
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 741
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 742
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 743
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 744
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 745
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 746
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 747
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 748
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 749
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 750
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 751
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 753
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 754
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 755
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 756
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 757
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 759
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 760
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 761
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 762
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 763
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 765
    :cond_8
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 766
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 767
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 768
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 769
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 771
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 772
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 773
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 774
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 775
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 777
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 778
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 779
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 780
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 781
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 671
    :cond_9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 672
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 673
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 674
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 675
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 676
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 678
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 679
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 680
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 681
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 682
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 684
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 685
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 686
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 687
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 688
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 689
    :cond_a
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 690
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 691
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 692
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 693
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 694
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 696
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 697
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 698
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 699
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 700
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 702
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 703
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 704
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 705
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 706
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 708
    :cond_b
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 709
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 710
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 711
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 712
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 714
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 715
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 716
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 717
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 718
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 720
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 721
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 722
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 723
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 724
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 614
    :cond_c
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 615
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 616
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 617
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 618
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 619
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 621
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 622
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 623
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 624
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 625
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 627
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 628
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 629
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 630
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 631
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    .line 632
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 633
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 634
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 635
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 636
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 637
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 639
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 640
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 641
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 642
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 643
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 645
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 646
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 647
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 648
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 649
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 651
    :cond_e
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 652
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 653
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 654
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 655
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 657
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 658
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 659
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 660
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 661
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 663
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 664
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 665
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 666
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 667
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_0
    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 575
    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 576
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 577
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 578
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 579
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 580
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 581
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 582
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 583
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 584
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 585
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 587
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 588
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 589
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 590
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 591
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 594
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 595
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 596
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 597
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 598
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 599
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 600
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 601
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 602
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 604
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 605
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 606
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 607
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    .line 608
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setViewType(I)V
    .locals 3

    .line 496
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 499
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 500
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 512
    iget p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setViewType(II)V
    .locals 3

    .line 520
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    .line 524
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 540
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 543
    iget p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 536
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    .line 537
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 527
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 2

    .line 451
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_5

    .line 452
    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    if-nez v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isGESTURALEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isGESTURALEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 463
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    goto :goto_1

    .line 465
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 553
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 554
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 555
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 556
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 557
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 558
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 559
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 560
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 561
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 563
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 564
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 565
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 566
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 567
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
