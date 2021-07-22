.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "OPQuickLaunchCategorySettings.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

.field private mCurrentIndex:I

.field private final mFragmentTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

.field private mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mCurrentIndex:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    return-object p0
.end method

.method private initFragments()V
    .locals 5

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 99
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "directory_fragment"

    .line 100
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    if-nez v3, :cond_0

    .line 102
    new-instance v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-direct {v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    .line 103
    sget v4, Lcom/android/settings/R$id;->op_quick_launch_category_viewpager:I

    invoke-virtual {v1, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    sget v3, Lcom/android/settings/R$string;->oneplus_shortcuts_title:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string v2, "browse_fragment"

    .line 110
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    if-nez v3, :cond_1

    .line 112
    new-instance v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-direct {v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    .line 113
    sget v4, Lcom/android/settings/R$id;->op_quick_launch_category_viewpager:I

    invoke-virtual {v1, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragmentTitles:Ljava/util/List;

    sget v3, Lcom/android/settings/R$string;->oneplus_apps_title:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 119
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private initTabLayout()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)V

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/quicklaunch/TabUtils;->setupWithViewPager(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;Lcom/oneplus/settings/quicklaunch/TabUtils$OnSetupTabListener;)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mCurrentIndex:I

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private initViewPager()V
    .locals 2

    .line 89
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    .line 90
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mFragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->updateData(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 57
    sget p1, Lcom/android/settings/R$layout;->op_quick_launcher_category_settings:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 65
    sget p1, Lcom/android/settings/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    sget p1, Lcom/android/settings/R$id;->op_quick_launch_category_viewpager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 70
    sget p1, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 71
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->initFragments()V

    .line 72
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->initViewPager()V

    .line 73
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->initTabLayout()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return-void
.end method
