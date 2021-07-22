.class Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ProfileSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mChildFragments:[Landroidx/fragment/app/Fragment;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V
    .locals 1

    .line 184
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 185
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->access$000(I)I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->access$100()[I

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->access$000(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
