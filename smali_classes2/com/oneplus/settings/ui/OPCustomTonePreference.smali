.class public Lcom/oneplus/settings/ui/OPCustomTonePreference;
.super Landroidx/preference/Preference;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private final mPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSelectedIndex:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    .line 67
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object p4, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p4, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 84
    sget p2, Lcom/android/settings/R$layout;->op_custom_tone_choose_layout:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 85
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method private enableDarkTheme(Z)V
    .locals 1

    .line 379
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 380
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 1

    .line 102
    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 107
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 108
    sget v0, Lcom/android/settings/R$id;->tone_preview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    .line 109
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 112
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->oneplus_theme_tone_effect_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->op_img_tone_color:I

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    .line 113
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->oneplus_theme_tone_effect_light:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/settings/R$drawable;->op_img_tone_light:I

    const/4 v6, 0x2

    invoke-direct {v2, p0, v3, v5, v6}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    .line 114
    new-instance v3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/android/settings/R$string;->oneplus_theme_tone_effect_dark:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/android/settings/R$drawable;->op_img_tone_dark:I

    invoke-direct {v3, p0, v5, v7, v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    .line 117
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "oem_black_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x0

    if-ne v1, v6, :cond_0

    .line 119
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    sget v6, Lcom/android/settings/R$drawable;->op_img_tone_color1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    sget v6, Lcom/android/settings/R$drawable;->op_img_tone_color2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    .line 122
    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    .line 123
    iput-boolean v4, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    sget v6, Lcom/android/settings/R$drawable;->op_img_tone_light1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    sget v6, Lcom/android/settings/R$drawable;->op_img_tone_light2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iput v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    .line 128
    iput v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    .line 129
    iput-boolean v4, v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 131
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    sget v7, Lcom/android/settings/R$drawable;->op_img_tone_dark1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    sget v7, Lcom/android/settings/R$drawable;->op_img_tone_dark2:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iput v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    .line 134
    iput v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    .line 135
    iput-boolean v4, v3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    .line 138
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 146
    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    .line 147
    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    .line 148
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->op_control_margin_space8:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 147
    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v0

    add-int/2addr v1, v0

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 151
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 185
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 187
    sget v0, Lcom/android/settings/R$id;->custom_style_recyclerview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 191
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;

    invoke-direct {v0, p0, v5}, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 194
    new-instance p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    .line 195
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public saveSelectedTone()V
    .locals 10

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    const/4 v2, 0x2

    const-string v3, "#"

    const-string v4, "persist.sys.theme.accentcolor"

    const-string v5, "oneplus_accent_color"

    const/4 v6, 0x1

    const-string v7, ""

    const-string v8, "theme_theme"

    if-ne v1, v2, :cond_1

    const-string v1, "3"

    .line 339
    invoke-static {v8, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    .line 341
    invoke-direct {p0, v6}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    .line 342
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v2, v5, v1, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 344
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_0
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    if-ne v1, v6, :cond_3

    const-string v1, "2"

    .line 349
    invoke-static {v8, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    .line 351
    invoke-direct {p0, v9}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    .line 352
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v2, v5, v1, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 355
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 357
    :cond_2
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "1"

    .line 359
    invoke-static {v8, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    .line 361
    invoke-direct {p0, v9}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    .line 362
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->op_primary_default_light:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v2, v5, v1, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 365
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_4
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "oneplus_accentcolor"

    .line 370
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method
