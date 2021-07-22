.class public Lcom/google/android/material/banner/BannerView;
.super Landroid/widget/FrameLayout;
.source "BannerView.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mMultiButtonLeftView:Landroid/widget/Button;

.field private mMultiButtonRightView:Landroid/widget/Button;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSingleButtonView:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/banner/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    sget v0, Lcom/google/android/material/R$attr;->bannerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/banner/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$layout;->control_banner_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/banner/BannerView;->initView()V

    const/4 p1, 0x4

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 55
    sget v0, Lcom/google/android/material/R$id;->banner_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/banner/BannerView;->mIconView:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/google/android/material/R$id;->banner_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/banner/BannerView;->mTitleView:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/google/android/material/R$id;->single_action_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/banner/BannerView;->mSingleButtonView:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/google/android/material/R$id;->multi_action_button_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/banner/BannerView;->mMultiButtonLeftView:Landroid/widget/Button;

    .line 59
    sget v0, Lcom/google/android/material/R$id;->multi_action_button_right:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/banner/BannerView;->mMultiButtonRightView:Landroid/widget/Button;

    .line 60
    sget v0, Lcom/google/android/material/R$id;->banner_vertical_button_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/google/android/material/R$id;->banner_text_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/google/android/material/R$id;->banner_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/banner/BannerView;->mRootView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getMultiLeftButton()Landroid/widget/Button;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mMultiButtonLeftView:Landroid/widget/Button;

    return-object p0
.end method

.method public getMultiRightButton()Landroid/widget/Button;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mMultiButtonRightView:Landroid/widget/Button;

    return-object p0
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mRootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSignleButton()Landroid/widget/Button;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mSingleButtonView:Landroid/widget/Button;

    return-object p0
.end method

.method public getTiTleView()Landroid/widget/TextView;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/material/banner/BannerView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/banner/BannerView;->mTitleView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
