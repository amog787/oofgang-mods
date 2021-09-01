.class public Lcom/oneplus/settings/product/ProductInfoActivity;
.super Landroid/app/Activity;
.source "ProductInfoActivity.java"


# static fields
.field private static count:I


# instance fields
.field private mCountTextView:Landroid/widget/TextView;

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    .line 25
    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 28
    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/oneplus/settings/product/ProductInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/product/ProductInfoActivity$1;-><init>(Lcom/oneplus/settings/product/ProductInfoActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/product/ProductInfoActivity;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/settings/product/ProductInfoActivity;->updatePagerViews(I)V

    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "d"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initViews()V
    .locals 11

    .line 47
    sget v0, Lcom/android/settings/R$layout;->op_product_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v1

    const-string v2, "drawable"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 60
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_for_china_and_india:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v6, Lcom/android/settings/R$string;->oneplus_model_for_europe_and_america:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move v1, v5

    :goto_0
    const/16 v6, 0x12

    if-ge v1, v6, :cond_4

    .line 72
    sget v6, Lcom/android/settings/R$layout;->op_product_img_item:I

    invoke-virtual {v0, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 73
    sget v7, Lcom/android/settings/R$id;->image:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "product_info_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 81
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v5

    :goto_2
    const/16 v6, 0xb

    if-ge v1, v6, :cond_4

    .line 62
    sget v6, Lcom/android/settings/R$layout;->op_product_img_item:I

    invoke-virtual {v0, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 63
    sget v7, Lcom/android/settings/R$id;->image:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "product_info_6x_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 66
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    move v1, v5

    :goto_4
    const/16 v6, 0x11

    if-ge v1, v6, :cond_4

    .line 53
    sget v6, Lcom/android/settings/R$layout;->op_product_img_item:I

    invoke-virtual {v0, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 54
    sget v7, Lcom/android/settings/R$id;->image:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "product_info_gua_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 57
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    :cond_4
    sget v0, Lcom/android/settings/R$id;->main_pager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 88
    sget v0, Lcom/android/settings/R$id;->textcount:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    new-instance v0, Lcom/oneplus/settings/product/NovicePagerAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/product/NovicePagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/settings/product/NovicePagerAdapter;->getCount()I

    move-result v0

    sput v0, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    .line 95
    iget-object p0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePagerViews(I)V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->oneplus_model_for_china_and_india:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->oneplus_model_for_europe_and_america:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 39
    :cond_2
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->initViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
