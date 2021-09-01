.class public Lcom/oneplus/settings/ui/OPScreenColorModePreference;
.super Landroidx/preference/Preference;
.source "OPScreenColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_RES_ID:I

.field private static final LAYOUT_RES_ID_2K:I


# instance fields
.field private currIndex:I

.field private mContext:Landroid/content/Context;

.field private mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget v0, Lcom/android/settings/R$layout;->op_screen_color_mode_preference:I

    sput v0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->LAYOUT_RES_ID:I

    .line 28
    sget v0, Lcom/android/settings/R$layout;->op_screen_color_mode_preference_2k:I

    sput v0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->LAYOUT_RES_ID_2K:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ui/OPScreenColorModePreference;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Lcom/google/android/material/indicator/PageIndicator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 51
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    const/16 v0, 0x5a0

    if-ne p1, v0, :cond_0

    .line 53
    sget p1, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->LAYOUT_RES_ID_2K:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 55
    :cond_0
    sget p1, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->LAYOUT_RES_ID:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 63
    sget v0, Lcom/android/settings/R$id;->whatsnew_viewpager:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 64
    new-instance v1, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 65
    sget v1, Lcom/android/settings/R$id;->gesture_page_indicator:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/indicator/PageIndicator;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    .line 67
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 68
    sget v1, Lcom/android/settings/R$layout;->op_screen_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    sget v3, Lcom/android/settings/R$id;->imageview:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 70
    sget v4, Lcom/android/settings/R$drawable;->op_screen_show_1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    sget v3, Lcom/android/settings/R$layout;->op_screen_image:I

    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 72
    sget v4, Lcom/android/settings/R$id;->imageview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    sget v5, Lcom/android/settings/R$drawable;->op_screen_show_2:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    sget v4, Lcom/android/settings/R$layout;->op_screen_image:I

    invoke-virtual {p1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 75
    sget v2, Lcom/android/settings/R$id;->imageview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 76
    sget v4, Lcom/android/settings/R$drawable;->op_screen_show_3:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p1, Lcom/oneplus/settings/ui/OPScreenColorModePreference$1;

    invoke-direct {p1, p0, v2}, Lcom/oneplus/settings/ui/OPScreenColorModePreference$1;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;Ljava/util/ArrayList;)V

    .line 107
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 109
    iget v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 111
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/indicator/PageIndicator;->setNumPages(I)V

    .line 112
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicator;->setLocation(F)V

    return-void
.end method
