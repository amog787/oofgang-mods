.class public Lcom/oneplus/settings/OPScreenColorModeForProvision;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "OPScreenColorModeForProvision.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onBackPressed()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    sget v0, Lcom/android/settings/R$anim;->op_reverse_slide_in:I

    sget v1, Lcom/android/settings/R$anim;->op_reverse_slide_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget p1, Lcom/android/settings/R$layout;->op_screen_color_mode_for_provision_layout:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2100

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 23
    new-instance p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;-><init>()V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 25
    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 28
    sget p1, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 29
    new-instance v0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForProvision;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
