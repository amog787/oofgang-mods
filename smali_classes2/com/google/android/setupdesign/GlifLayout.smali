.class public Lcom/google/android/setupdesign/GlifLayout;
.super Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.source "GlifLayout.java"


# instance fields
.field private applyPartnerHeavyThemeResource:Z

.field private backgroundBaseColor:Landroid/content/res/ColorStateList;

.field private backgroundPatterned:Z

.field private primaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 91
    sget p1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 96
    sget p1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudUsePartnerHeavyTheme:I

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 115
    const-class v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    new-instance v3, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 116
    const-class v1, Lcom/google/android/setupdesign/template/IconMixin;

    new-instance v3, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/setupdesign/template/IconMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 117
    const-class p1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    new-instance p2, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-direct {p2, p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 118
    new-instance p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 119
    const-class p2, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 123
    new-instance v1, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v1, p1, p2}, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 127
    :cond_1
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudColorPrimary:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 132
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    if-eqz p1, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateContentBackgroundColorWithPartnerConfig()V

    .line 136
    :cond_3
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudBackgroundBaseColor:I

    .line 137
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 140
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudBackgroundPatterned:I

    .line 141
    invoke-virtual {v0, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundPatterned(Z)V

    .line 144
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudStickyHeader:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->inflateStickyHeader(I)Landroid/view/View;

    .line 148
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private tryApplyPartnerCustomizationStyleToShortDescription()V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    if-eqz v0, :cond_0

    .line 161
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_description:I

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 164
    invoke-static {p0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 2

    .line 287
    sget v0, Lcom/google/android/setupdesign/R$id;->suc_layout_status:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 296
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    if-eqz v1, :cond_2

    .line 297
    new-instance v1, Lcom/google/android/setupdesign/GlifPatternDrawable;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/GlifPatternDrawable;-><init>(I)V

    goto :goto_1

    .line 298
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 299
    :goto_1
    const-class v0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private updateContentBackgroundColorWithPartnerConfig()V
    .locals 3

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 328
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 180
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 225
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 217
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 205
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 233
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 200
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 201
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public inflateStickyHeader(I)Landroid/view/View;
    .locals 1

    .line 194
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_sticky_header:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 195
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 196
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 154
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/IconMixin;->tryApplyPartnerCustomizationStyle()V

    .line 155
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryApplyPartnerCustomizationStyle()V

    .line 156
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationStyleToShortDescription()V

    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 172
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_template:I

    .line 174
    :cond_0
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 260
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 278
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 221
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 209
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 213
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 229
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 241
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 242
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 243
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 308
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    return-void
.end method

.method public shouldApplyPartnerHeavyThemeResource()Z
    .locals 0

    .line 319
    iget-boolean p0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    return p0
.end method
