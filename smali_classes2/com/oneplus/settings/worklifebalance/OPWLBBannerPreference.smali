.class public Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;
.super Landroidx/preference/Preference;
.source "OPWLBBannerPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon:Landroidx/preference/internal/PreferenceImageView;

.field private mLlClickBg:Landroid/widget/LinearLayout;

.field private mLlContent:Landroid/widget/LinearLayout;

.field private mTvContent:Landroid/widget/TextView;

.field private mTvNew:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mLlContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mLlClickBg:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mContext:Landroid/content/Context;

    .line 55
    sget p1, Lcom/android/settings/R$layout;->op_preference_wlb:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private isWLBConfigured()I
    .locals 2

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_wlb_setup_done"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private setClickBgHeight()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mLlContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mLlClickBg:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;-><init>(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearNew()V
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvNew:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    sget v0, Lcom/android/settings/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mLlContent:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/android/settings/R$id;->ll_click_bg:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mLlClickBg:Landroid/widget/LinearLayout;

    .line 63
    sget v0, Lcom/android/settings/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvTitle:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/android/settings/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvContent:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/preference/internal/PreferenceImageView;

    iput-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mIcon:Landroidx/preference/internal/PreferenceImageView;

    .line 66
    sget v0, Lcom/android/settings/R$id;->tv_new:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvNew:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 69
    invoke-direct {p0}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->isWLBConfigured()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvNew:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->work_life_balance:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mTvContent:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->work_life_banner_summary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->mIcon:Landroidx/preference/internal/PreferenceImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_homepage_opwlb:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    invoke-direct {p0}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->setClickBgHeight()V

    return-void
.end method
