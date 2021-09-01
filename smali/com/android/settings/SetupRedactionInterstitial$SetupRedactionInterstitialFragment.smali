.class public Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;
.super Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.source "SetupRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupRedactionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    sget p2, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    .line 109
    invoke-virtual {p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/template/IconMixin;

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->op_setupwizard_oxygen_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/setupdesign/template/IconMixin;->setIconTint(I)V

    .line 113
    sget p2, Lcom/android/settings/R$id;->tv_show_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/android/settings/R$id;->tv_redact_sensitive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    sget v1, Lcom/android/settings/R$id;->tv_hide_all:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->white:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method
