.class public abstract Lcom/oneplus/security/network/view/BaseTabActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;
    }
.end annotation


# static fields
.field private static mLanguage:Ljava/lang/String;


# instance fields
.field protected mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private final mDarkModeObserver:Landroid/database/ContentObserver;

.field private final mDarkModeUri:Landroid/net/Uri;

.field protected mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field protected mTabsAdapter:Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;

.field protected mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    const-string v0, "oem_black_mode"

    .line 172
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mDarkModeUri:Landroid/net/Uri;

    .line 174
    new-instance v0, Lcom/oneplus/security/network/view/BaseTabActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/security/network/view/BaseTabActivity$4;-><init>(Lcom/oneplus/security/network/view/BaseTabActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mDarkModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/view/BaseTabActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->restartActivity()V

    return-void
.end method

.method private restartActivity()V
    .locals 2

    const-string v0, "BaseTabActivity"

    const-string v1, "restartActivity"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 189
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 190
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public abstract getFragmentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabTitle()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mLanguage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/security/network/view/BaseTabActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTabActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/oneplus/security/network/view/BaseTabActivity;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/security/network/view/BaseTabActivity;->mLanguage:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->restartActivity()V

    .line 47
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/security/network/view/BaseTabActivity;->mLanguage:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getFragmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 53
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->onSetContentView()V

    .line 56
    sget p1, Lcom/android/settings/R$id;->pager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 57
    sget p1, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 59
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    new-instance v0, Lcom/oneplus/security/network/view/BaseTabActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/network/view/BaseTabActivity$1;-><init>(Lcom/oneplus/security/network/view/BaseTabActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance p1, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;-><init>(Lcom/oneplus/security/network/view/BaseTabActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mTabsAdapter:Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;

    .line 71
    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 73
    iget-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/security/network/view/BaseTabActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/view/BaseTabActivity$2;-><init>(Lcom/oneplus/security/network/view/BaseTabActivity;)V

    new-instance v2, Lcom/oneplus/security/network/view/BaseTabActivity$3;

    iget-object v3, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/security/network/view/BaseTabActivity$3;-><init>(Lcom/oneplus/security/network/view/BaseTabActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p1, v0, v1, v2}, Lcom/oneplus/security/utils/TabUtils;->setupWithViewPager(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;Lcom/oneplus/security/utils/TabUtils$ViewPagerOnTabSelectedListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 195
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume mLanguage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/security/network/view/BaseTabActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTabActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mDarkModeUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mDarkModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onSetContentView()V
    .locals 1

    .line 101
    sget v0, Lcom/android/settings/R$layout;->activity_tab_default_fixed:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mDarkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onTabPageSelected(I)V
    .locals 0

    return-void
.end method

.method public setSelectTab(I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected setupTab(ILcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mTabsAdapter:Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity$TabsAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
