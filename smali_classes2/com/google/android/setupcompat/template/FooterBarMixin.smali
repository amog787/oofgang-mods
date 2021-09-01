.class public Lcom/google/android/setupcompat/template/FooterBarMixin;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# static fields
.field private static final nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final applyPartnerResources:Z

.field private buttonContainer:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field defaultPadding:I

.field private footerBarPaddingBottom:I

.field private footerBarPaddingTop:I

.field private final footerBarPrimaryBackgroundColor:I

.field private final footerBarSecondaryBackgroundColor:I

.field private final footerStub:Landroid/view/ViewStub;

.field public final metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

.field private primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private primaryButtonId:I

.field public primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field primaryDefaultTextColor:Landroid/content/res/ColorStateList;

.field private removeFooterBarWhenEmpty:Z

.field private secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private secondaryButtonId:I

.field public secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

.field secondaryDefaultTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 87
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryDefaultTextColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    .line 101
    new-instance v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-direct {v1}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;-><init>()V

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 156
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 157
    sget v1, Lcom/google/android/setupcompat/R$id;->suc_layout_footer:I

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 158
    instance-of v1, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 160
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 162
    iget-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin:[I

    .line 163
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 164
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingVertical:I

    .line 165
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 166
    sget p3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingTop:I

    .line 167
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 169
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingBottom:I

    iget p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 172
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterBackground:I

    .line 173
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    .line 174
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterBackground:I

    .line 175
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    .line 177
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterButton:I

    .line 178
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 179
    sget p3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterButton:I

    .line 180
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButtonInflater;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/android/setupcompat/template/FooterButtonInflater;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_1

    .line 186
    invoke-virtual {p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 187
    iget-object p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p3, v0, v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logPrimaryButtonInitialStateVisibility(ZZ)V

    :cond_1
    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 192
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0, v0, v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logSecondaryButtonInitialStateVisibility(ZZ)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/setupcompat/template/FooterBarMixin;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    return-void
.end method

.method private addSpace()Landroid/view/View;
    .locals 4

    .line 198
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object p0

    .line 199
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private autoSetButtonBarVisibility()V
    .locals 4

    .line 474
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 480
    :goto_1
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    goto :goto_2

    .line 484
    :cond_2
    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    if-eqz p0, :cond_3

    const/16 v3, 0x8

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    .line 481
    :cond_4
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private static convertRgbToArgb(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 800
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
    .locals 1

    .line 105
    new-instance v0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin$1;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V

    return-object v0
.end method

.method private ensureFooterInflated()Landroid/widget/LinearLayout;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 212
    sget v0, Lcom/google/android/setupcompat/R$layout;->suc_footer_button_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateFooter(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 213
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterBarInflated(Landroid/widget/LinearLayout;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterBarApplyPartnerResource(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Footer stub is not found in this template"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static generateViewId()I
    .locals 3

    .line 507
    :cond_0
    sget-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 513
    :cond_1
    sget-object v2, Lcom/google/android/setupcompat/template/FooterBarMixin;->nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method private static getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 756
    :pswitch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 753
    :pswitch_1
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 750
    :pswitch_2
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 747
    :pswitch_3
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 744
    :pswitch_4
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 741
    :pswitch_5
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 738
    :pswitch_6
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 735
    :pswitch_7
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 1

    .line 426
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result v0

    .line 429
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    .line 435
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {p1, p0, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-nez p0, :cond_2

    .line 438
    sget p2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 443
    sget p2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    :cond_3
    :goto_1
    return p2
.end method

.method private inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 522
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getPartnerTheme()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->createThemedButton(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object p2

    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 524
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterBarMixin;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    .line 530
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    invoke-virtual {p2, p1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 536
    invoke-virtual {p2}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnButtonEventListener(Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;)V

    return-object p2
.end method

.method private onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 544
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 547
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 550
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 549
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextSizeWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 552
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextTypeFaceConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 551
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTypeFaceWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 555
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 556
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonDisableAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    .line 557
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonDisableBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    .line 553
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonBackgroundWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 558
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonRadiusConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonRadiusWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 559
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonIconConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonIconWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonRippleColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    return-void
.end method

.method private setButtonIcon(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 712
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 713
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 714
    invoke-virtual {p2, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 719
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move-object p0, p2

    move-object p2, v2

    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    if-ne v0, p0, :cond_3

    move-object p0, v2

    goto :goto_0

    :cond_3
    move-object p0, v2

    move-object p2, p0

    .line 724
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 725
    invoke-virtual {p1, p2, v2, p0, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 727
    :cond_4
    invoke-virtual {p1, p2, v2, p0, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private updateButtonBackground(Landroid/widget/Button;I)V
    .locals 0

    .line 649
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateButtonBackgroundWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Update button background only support on sdk Q or higher"

    invoke-static {v0, v3}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-array v0, v1, [I

    const v3, -0x101009e

    aput v3, v0, v2

    new-array v3, v2, [I

    .line 610
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p2

    .line 611
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 612
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p3

    .line 613
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 614
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, p4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p4

    if-eqz p2, :cond_3

    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    .line 620
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    new-array p3, v1, [I

    const v4, 0x1010033

    aput v4, p3, v2

    invoke-virtual {p0, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const p3, 0x3e851eb8    # 0.26f

    .line 621
    invoke-virtual {p0, v2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 622
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    if-nez p4, :cond_2

    move p4, p2

    .line 631
    :cond_2
    new-instance p0, Landroid/content/res/ColorStateList;

    const/4 v4, 0x2

    new-array v5, v4, [[I

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    new-array v0, v4, [I

    .line 634
    invoke-static {p4, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->convertRgbToArgb(IF)I

    move-result p3

    aput p3, v0, v2

    aput p2, v0, v1

    invoke-direct {p0, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 642
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-array p3, v2, [I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 643
    invoke-virtual {p1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 644
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method private updateButtonIconWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 700
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 702
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setButtonIcon(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateButtonRadiusWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 2

    .line 654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p2

    .line 656
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 658
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method private updateButtonRippleColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .locals 6

    .line 668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 669
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getRippleDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 677
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 678
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 679
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v2

    .line 681
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 682
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 683
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonRippleColorAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    invoke-virtual {v4, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    .line 686
    new-instance p2, Landroid/content/res/ColorStateList;

    const/4 v4, 0x2

    new-array v5, v4, [[I

    aput-object v1, v5, v3

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    aput-object v1, v5, v0

    new-array v1, v4, [I

    .line 689
    invoke-static {v2, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->convertRgbToArgb(IF)I

    move-result p0

    aput p0, v1, v3

    aput v3, v1, v0

    invoke-direct {p2, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 690
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private updateButtonTextColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 565
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 569
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 574
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryDefaultTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 573
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateButtonTextSizeWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 582
    invoke-virtual {p1, p2, p0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private updateButtonTypeFaceWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 589
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 590
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 592
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected createThemedButton(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 286
    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 287
    sget p1, Lcom/google/android/setupcompat/R$layout;->suc_button:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterActionButton;

    return-object p0
.end method

.method public getButtonContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 770
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_1

    .line 771
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 772
    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 773
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 774
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    .line 775
    :cond_0
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    .line 776
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 777
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLoggingMetrics()Landroid/os/PersistableBundle;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 855
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method getPaddingBottom()I
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    .line 834
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingBottom()I

    move-result p0

    :goto_0
    return p0
.end method

.method getPaddingTop()I
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingTop()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method public getPrimaryButtonView()Landroid/widget/Button;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method getRippleDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;
    .locals 1

    .line 787
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_1

    .line 788
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 789
    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 790
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    .line 791
    :cond_0
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    .line 792
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method public getSecondaryButtonView()Landroid/widget/Button;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method public getVisibility()I
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method protected inflateFooter(I)Landroid/view/View;
    .locals 3

    .line 804
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 805
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButtonBar_Stackable:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 806
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 811
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method isPrimaryButtonVisible()Z
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSecondaryButtonVisible()Z
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 840
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    const/4 v2, 0x0

    .line 839
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logPrimaryButtonInitialStateVisibility(ZZ)V

    .line 841
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 842
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result p0

    .line 841
    invoke-virtual {v0, p0, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logSecondaryButtonInitialStateVisibility(ZZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibility(ZZ)V

    return-void
.end method

.method protected onFooterBarApplyPartnerResource(Landroid/widget/LinearLayout;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_1

    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 258
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 264
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 266
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 268
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 272
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 274
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    move-object v1, p0

    move-object v2, p1

    .line 270
    invoke-direct/range {v1 .. v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    return-void
.end method

.method protected onFooterBarInflated(Landroid/widget/LinearLayout;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 230
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterBarMixin;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 236
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 238
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    move-object v1, p0

    move-object v2, p1

    .line 234
    invoke-direct/range {v1 .. v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    return-void
.end method

.method protected onFooterButtonInflated(Landroid/widget/Button;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonBackground(Landroid/widget/Button;I)V

    .line 418
    :cond_0
    iget-object p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    return-void
.end method

.method protected repopulateButtons()V
    .locals 3

    .line 392
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    .line 394
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v2

    .line 395
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()Landroid/view/View;

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 3

    const-string v0, "setPrimaryButton"

    .line 293
    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 297
    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget v1, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 300
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 299
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 306
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 308
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 309
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 314
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v0

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    .line 319
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 320
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 321
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 323
    iget p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    invoke-virtual {p0, v1, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 324
    invoke-direct {p0, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 328
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    return-void
.end method

.method public setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 3

    const-string v0, "setSecondaryButton"

    .line 349
    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 353
    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget v1, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 356
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 361
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 362
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 363
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 364
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 366
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 367
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 368
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 369
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 370
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v0

    .line 372
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    .line 375
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 376
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 377
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 379
    iget p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    invoke-virtual {p0, v1, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 380
    invoke-direct {p0, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    return-void
.end method
