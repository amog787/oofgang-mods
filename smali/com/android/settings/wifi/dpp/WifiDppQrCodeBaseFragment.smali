.class public abstract Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiDppQrCodeBaseFragment.java"


# instance fields
.field protected mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

.field protected mIsInSetupWizard:Z

.field protected mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource does not exist: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDppQrCodeBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected abstract isFooterAvailable()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 66
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x1020010

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    .line 68
    instance-of p2, p1, Lcom/google/android/setupdesign/GlifLayout;

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->isFooterAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x2

    .line 75
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget p2, Lcom/android/settings/R$style;->OnePlusSecondaryButtonStyle:I

    .line 76
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 78
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 80
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x5

    .line 81
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget p2, Lcom/android/settings/R$style;->OnePlusPrimaryButtonStyle:I

    .line 82
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 90
    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    if-nez p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class p1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setHeaderIconImageResource(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected varargs setHeaderTitle(I[Ljava/lang/Object;)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setHeaderTitle(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setProgressBarShown(Z)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setProgressBarShown(Z)V

    return-void
.end method
