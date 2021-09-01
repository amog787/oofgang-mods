.class public Lcom/android/settingslib/widget/AppEntitiesHeaderController;
.super Ljava/lang/Object;
.source "AppEntitiesHeaderController.java"


# static fields
.field public static final MAXIMUM_APPS:I = 0x3


# instance fields
.field private final mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

.field private final mAppEntityViews:[Landroid/view/View;

.field private final mAppIconViews:[Landroid/widget/ImageView;

.field private final mAppSummaryViews:[Landroid/widget/TextView;

.field private final mAppTitleViews:[Landroid/widget/TextView;

.field private final mAppViewsContainer:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderDetails:Ljava/lang/CharSequence;

.field private mHeaderDetailsRes:I

.field private final mHeaderDetailsView:Landroid/widget/TextView;

.field private mHeaderEmptyRes:I

.field private final mHeaderEmptyView:Landroid/widget/TextView;

.field private mHeaderTitleRes:I

.field private final mHeaderTitleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    .line 49
    sget p1, Lcom/android/settingslib/widget/R$id;->header_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/android/settingslib/widget/R$id;->header_details:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/android/settingslib/widget/R$id;->empty_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    .line 52
    sget p1, Lcom/android/settingslib/widget/R$id;->app_views_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppViewsContainer:Landroid/view/View;

    const/4 p1, 0x3

    new-array v0, p1, [Lcom/android/settingslib/widget/AppEntityInfo;

    .line 53
    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    new-array v0, p1, [Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    new-array v0, p1, [Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/view/View;

    .line 57
    sget v1, Lcom/android/settingslib/widget/R$id;->app1_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->app2_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Lcom/android/settingslib/widget/R$id;->app3_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    :goto_0
    if-ge v2, p1, :cond_0

    .line 60
    iget-object p2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object p2, p2, v2

    .line 61
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    sget v1, Lcom/android/settingslib/widget/R$id;->app_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    sget v1, Lcom/android/settingslib/widget/R$id;->app_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    sget v1, Lcom/android/settingslib/widget/R$id;->app_summary:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    aput-object p2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindAppEntityView(I)V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    aget-object v0, v0, p1

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 158
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 161
    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntityInfo;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    aget-object p1, v1, p1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->handleSummaryDot(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private bindHeaderDetailsView()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetails:Ljava/lang/CharSequence;

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppEntitiesHeaderCtl"

    const-string v3, "Resource of header details can\'t not be found!"

    .line 145
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindHeaderTitleView()V
    .locals 3

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppEntitiesHeaderCtl"

    const-string v2, "Resource of header title can\'t not be found!"

    .line 132
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private handleSummaryDot(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isEn(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "hr."

    .line 175
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hrs"

    .line 176
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p0, "min."

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mins"

    .line 179
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private isAppEntityInfosEmpty()Z
    .locals 4

    .line 195
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    .line 196
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 199
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private setEmptyViewVisible(Z)V
    .locals 4

    .line 185
    iget v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyRes:I

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppViewsContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->bindHeaderTitleView()V

    .line 113
    invoke-direct {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->isAppEntityInfosEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setEmptyViewVisible(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setEmptyViewVisible(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->bindHeaderDetailsView()V

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 120
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->bindAppEntityView(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAppEntity(ILcom/android/settingslib/widget/AppEntityInfo;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public setHeaderDetails(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetails:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHeaderDetailsClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setHeaderTitleRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleRes:I

    return-object p0
.end method
