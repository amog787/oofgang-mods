.class public Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "AodSmartDisplaySettingsActivity.java"


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/oneplus/settings/OPOnBackPressedListener;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/oneplus/settings/OPOnBackPressedListener;

    invoke-interface {v0}, Lcom/oneplus/settings/OPOnBackPressedListener;->doBack()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_aod_smart_display_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    new-instance v0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity$1;-><init>(Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p1, Lcom/android/settings/R$layout;->settings_main_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 43
    invoke-static {}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->newInstance()Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 45
    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 48
    sget p1, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 49
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method
