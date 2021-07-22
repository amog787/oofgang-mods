.class public Lcom/oneplus/security/utils/TabUtils;
.super Ljava/lang/Object;
.source "TabUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/utils/TabUtils$ViewPagerOnTabSelectedListener;,
        Lcom/oneplus/security/utils/TabUtils$TabLayoutOnPageChangeListener;,
        Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;
    }
.end annotation


# direct methods
.method public static setTabsFromPagerAdapter(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/PagerAdapter;Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 55
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 57
    invoke-interface {p2, v0, v1}, Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;->onSetupTab(ILcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setupWithViewPager(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;Lcom/oneplus/security/utils/TabUtils$ViewPagerOnTabSelectedListener;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p0, v0, p2}, Lcom/oneplus/security/utils/TabUtils;->setTabsFromPagerAdapter(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/PagerAdapter;Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;)V

    .line 29
    new-instance p2, Lcom/oneplus/security/utils/TabUtils$TabLayoutOnPageChangeListener;

    invoke-direct {p2, p0}, Lcom/oneplus/security/utils/TabUtils$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 32
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 35
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 36
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
