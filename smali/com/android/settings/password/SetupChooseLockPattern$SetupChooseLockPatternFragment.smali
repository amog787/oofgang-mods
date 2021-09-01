.class public Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private mLeftButtonIsSkip:Z

.field private mOptionsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 105
    iget p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "skip_screen_lock_dialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 188
    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 190
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$onCreateView$0$SetupChooseLockPattern$SetupChooseLockPatternFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$bool;->config_lock_pattern_minimal_ui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 100
    sget p2, Lcom/android/settings/R$id;->screen_lock_options:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    .line 101
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->op_setupwizard_oxygen_accent_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;

    invoke-direct {p3, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance p3, Lcom/android/settings/password/-$$Lambda$qmj8MbFDaJVoWm4wk3p_uMWO8v0;

    invoke-direct {p3, p0}, Lcom/android/settings/password/-$$Lambda$qmj8MbFDaJVoWm4wk3p_uMWO8v0;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    move-object p2, p1

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 111
    invoke-virtual {p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 112
    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$color;->op_setupwizard_oxygen_accent_color:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-object p1
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 1

    .line 150
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, p1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    return-void
.end method

.method protected onSkipOrClearButtonClick(Landroid/view/View;)V
    .locals 8

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLeftButtonIsSkip:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "for_fingerprint"

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "for_face"

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x1

    .line 128
    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onSkipOrClearButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    .line 122
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 3

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_lock_pattern_minimal_ui:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 162
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 161
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    :cond_2
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->skip_label:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLeftButtonIsSkip:Z

    goto :goto_2

    .line 172
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLeftButtonIsSkip:Z

    .line 177
    :goto_2
    iget p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->message:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 178
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 180
    :cond_4
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method
