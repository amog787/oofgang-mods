.class public Lcom/android/settings/network/MobileNetworkListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MobileNetworkListFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/settings/network/MobileNetworkListFragment$1;

    sget v1, Lcom/android/settings/R$xml;->mobile_network_list:I

    invoke-direct {v0, v1}, Lcom/android/settings/network/MobileNetworkListFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/MobileNetworkListFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/network/MobileNetworkListController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/MobileNetworkListController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkListFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x65b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 38
    sget p0, Lcom/android/settings/R$xml;->mobile_network_list:I

    return p0
.end method
