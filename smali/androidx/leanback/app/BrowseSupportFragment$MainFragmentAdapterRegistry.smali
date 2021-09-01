.class public final Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainFragmentAdapterRegistry"
.end annotation


# static fields
.field private static final sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;


# instance fields
.field private final mItemToFragmentFactoryMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 670
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;

    invoke-direct {v0}, Landroidx/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;-><init>()V

    sput-object v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    .line 673
    const-class v0, Landroidx/leanback/widget/ListRow;

    sget-object v1, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->registerFragment(Ljava/lang/Class;Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;)V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 681
    sget-object v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    if-nez p1, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 682
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 687
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;->createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public registerFragment(Ljava/lang/Class;Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;",
            ")V"
        }
    .end annotation

    .line 677
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
