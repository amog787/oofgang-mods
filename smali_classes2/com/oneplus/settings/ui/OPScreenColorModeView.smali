.class public Lcom/oneplus/settings/ui/OPScreenColorModeView;
.super Landroid/widget/FrameLayout;
.source "OPScreenColorModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;
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

    .line 26
    sget v0, Lcom/android/settings/R$layout;->op_screen_color_mode_preference:I

    sput v0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->LAYOUT_RES_ID:I

    .line 27
    sget v0, Lcom/android/settings/R$layout;->op_screen_color_mode_preference_2k:I

    sput v0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->LAYOUT_RES_ID_2K:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ui/OPScreenColorModeView;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Lcom/google/android/material/indicator/PageIndicator;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 50
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    const/16 v0, 0x5a0

    if-ne p1, v0, :cond_0

    .line 52
    sget p1, Lcom/oneplus/settings/ui/OPScreenColorModeView;->LAYOUT_RES_ID_2K:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->setLayoutResource(I)V

    goto :goto_0

    .line 54
    :cond_0
    sget p1, Lcom/oneplus/settings/ui/OPScreenColorModeView;->LAYOUT_RES_ID:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->setLayoutResource(I)V

    .line 56
    :goto_0
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->onBindViewHolder(Landroid/view/View;)V

    return-void
.end method

.method private setLayoutResource(I)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/view/View;)V
    .locals 6

    .line 66
    sget v0, Lcom/android/settings/R$id;->whatsnew_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 67
    new-instance v1, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 68
    sget v1, Lcom/android/settings/R$id;->gesture_page_indicator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/indicator/PageIndicator;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    .line 70
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 71
    sget v1, Lcom/android/settings/R$layout;->op_screen_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v3, Lcom/android/settings/R$id;->imageview:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 73
    sget v4, Lcom/android/settings/R$drawable;->op_screen_show_1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    sget v3, Lcom/android/settings/R$layout;->op_screen_image:I

    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    sget v4, Lcom/android/settings/R$id;->imageview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 76
    sget v5, Lcom/android/settings/R$drawable;->op_screen_show_2:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    sget v4, Lcom/android/settings/R$layout;->op_screen_image:I

    invoke-virtual {p1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 78
    sget v2, Lcom/android/settings/R$id;->imageview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 79
    sget v4, Lcom/android/settings/R$drawable;->op_screen_show_3:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance p1, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;

    invoke-direct {p1, p0, v2}, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 112
    iget v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/indicator/PageIndicator;->setNumPages(I)V

    .line 115
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/google/android/material/indicator/PageIndicator;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicator;->setLocation(F)V

    return-void
.end method
