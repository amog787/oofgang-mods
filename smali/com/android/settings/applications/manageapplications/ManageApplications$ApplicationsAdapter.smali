.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;",
        ">;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;",
        "Lcom/android/settings/applications/AppStateBaseBridge$Callback;"
    }
.end annotation


# instance fields
.field private mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

.field private mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field private mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mLastIndex:I

.field private mLastSortMode:I

.field private final mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

.field private mOriginalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResumed:Z

.field private mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 8

    .line 1669
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 1649
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x0

    .line 1650
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 1661
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, 0x1

    .line 1670
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1671
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1672
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1673
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1674
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 1675
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1676
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 1679
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1680
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    .line 1681
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 1682
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 1683
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne p1, v0, :cond_0

    .line 1684
    new-instance p1, Lcom/android/settings/applications/AppStateNotificationBridge;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1685
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1700(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v5

    .line 1686
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;

    move-result-object v6

    .line 1687
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v7

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    .line 1689
    new-instance p1, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    :cond_1
    const/4 p3, 0x5

    if-ne p1, p3, :cond_2

    .line 1691
    new-instance p1, Lcom/android/settings/applications/AppStatePowerBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    :cond_2
    const/4 p3, 0x6

    if-ne p1, p3, :cond_3

    .line 1693
    new-instance p1, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    :cond_3
    const/4 p3, 0x7

    if-ne p1, p3, :cond_4

    .line 1695
    new-instance p1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    :cond_4
    const/16 p3, 0x8

    if-ne p1, p3, :cond_5

    .line 1697
    new-instance p1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_5
    const/16 p3, 0xd

    if-ne p1, p3, :cond_6

    .line 1699
    new-instance p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_6
    const/16 p3, 0xe

    if-ne p1, p3, :cond_7

    .line 1701
    new-instance p1, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_7
    const/16 p3, 0xf

    if-ne p1, p3, :cond_8

    .line 1704
    new-instance p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_8
    const/16 p3, 0x10

    if-ne p1, p3, :cond_9

    .line 1706
    new-instance p1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_9
    const/16 p3, 0x11

    if-ne p1, p3, :cond_a

    .line 1709
    new-instance p1, Lcom/oneplus/settings/better/ReadingModeEffectSelectBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/oneplus/settings/better/ReadingModeEffectSelectBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1713
    :cond_a
    new-instance p1, Lcom/android/settings/applications/AppStateUninstallBridge;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/UninstallAppsBackend;

    move-result-object p2

    invoke-direct {p1, p3, v0, p0, p2}, Lcom/android/settings/applications/AppStateUninstallBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/applications/UninstallAppsBackend;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    :goto_0
    if-eqz p4, :cond_b

    const-string p1, "state_last_scroll_index"

    .line 1717
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    :cond_b
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    .line 1630
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .line 1630
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    .line 1630
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .line 1630
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/FileViewHolderController;
    .locals 0

    .line 1630
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;
    .locals 0

    .line 1630
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1630
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1630
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1630
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addInstantAppIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 1949
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->BASE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 1954
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1955
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "com.nearme.instant.platform"

    invoke-static {p1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1956
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1959
    :try_start_0
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1961
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    move v2, p1

    .line 1964
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 1965
    new-instance v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    add-int/lit8 v7, v2, 0x1

    int-to-long v8, v2

    invoke-direct {v5, v6, v3, v8, v9}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 1966
    new-instance v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v2}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    .line 1967
    iput p1, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    .line 1968
    iput p1, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    .line 1969
    iput-boolean p1, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantApp:Z

    .line 1970
    iput-boolean v4, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->systemApp:Z

    .line 1971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    .line 1972
    iput p1, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    const-string v6, "name"

    .line 1973
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "pkg"

    .line 1974
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon"

    .line 1975
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1976
    array-length v10, v9

    invoke-static {v9, v4, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1977
    iput-object v8, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppPKG:Ljava/lang/String;

    .line 1978
    iput-object v6, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppName:Ljava/lang/String;

    .line 1979
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v6, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppIcon:Landroid/graphics/drawable/Drawable;

    const-string v6, "notify"

    .line 1980
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1

    move v6, p1

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    iput-boolean v6, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    .line 1981
    iput-boolean p1, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    .line 1982
    iput-object v2, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 1983
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_1

    .line 1985
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1987
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method

.method private hasExtraView()Z
    .locals 0

    .line 2351
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    if-eqz p0, :cond_0

    .line 2352
    invoke-interface {p0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->shouldShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$rebuild$2(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 1

    .line 1897
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic lambda$setExtraViewController$0()V
    .locals 0

    .line 1764
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onExtraViewCompleted()V

    return-void
.end method

.method private synthetic lambda$setExtraViewController$1()V
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->queryStats()V

    .line 1763
    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$zUDf4sT2ElTE4vuQaXRj16znehk;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$zUDf4sT2ElTE4vuQaXRj16znehk;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1918
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1921
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 1926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 1933
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1934
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1935
    invoke-static {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1936
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    .line 1940
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0
.end method

.method private updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    .line 2237
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 2304
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 2300
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/AppInfoBase;->getSummaryByDate(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2295
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2290
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/AppInfoBase;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2285
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2281
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2278
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2275
    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2272
    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2269
    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2266
    :pswitch_9
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2256
    :pswitch_a
    iget-object p0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz p2, :cond_1

    .line 2258
    new-instance p2, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    check-cast p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2259
    sget p0, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 2260
    :cond_0
    sget p0, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 2257
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(I)V

    goto :goto_1

    .line 2262
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2242
    :cond_2
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v1, :cond_3

    .line 2243
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-static {v1, v0, p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 2245
    iget-object p0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantApp:Z

    if-eqz v0, :cond_4

    .line 2246
    check-cast p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2247
    iget-object p0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2250
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 3

    .line 2310
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "ManageApplications"

    const-string/jumbo v1, "updateSwitch: 5"

    .line 2339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast p0, Lcom/android/settings/applications/AppStateUninstallBridge;

    .line 2341
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStateUninstallBridge;->getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 2342
    invoke-static {p2}, Lcom/android/settings/applications/AppStateUninstallBridge;->enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p2

    .line 2340
    invoke-virtual {p1, p0, p2, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSwitch(Landroid/view/View$OnClickListener;ZZ)V

    goto/16 :goto_2

    .line 2313
    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.oneplus.deskclock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.incallui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.calendar"

    .line 2314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.oneplus.calendar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.dialer"

    .line 2315
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.dialer"

    .line 2316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.oneplus.dialer"

    .line 2317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2323
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge;

    .line 2324
    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 2325
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v1

    .line 2326
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    .line 2323
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSwitch(Landroid/view/View$OnClickListener;ZZ)V

    goto :goto_1

    .line 2318
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge;

    .line 2319
    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 2321
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v1

    .line 2318
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSwitch(Landroid/view/View$OnClickListener;ZZ)V

    .line 2329
    :goto_1
    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v0, :cond_4

    .line 2331
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-static {v0, p2, p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 2334
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method filterSearch(Ljava/lang/String;)V
    .locals 2

    .line 1903
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    if-nez v0, :cond_0

    .line 1904
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string p0, "ManageApplications"

    const-string p1, "Apps haven\'t loaded completely yet, so nothing can be filtered"

    .line 1908
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1911
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSearchFilter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 2144
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getApplicationCount()I
    .locals 0

    .line 2140
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 1

    .line 2133
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2136
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemId(I)J
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 2152
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1830
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1831
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 2156
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 2162
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2163
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic lambda$rebuild$2$ManageApplications$ApplicationsAdapter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$rebuild$2(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    return-void
.end method

.method public synthetic lambda$setExtraViewController$0$ManageApplications$ApplicationsAdapter()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$setExtraViewController$0()V

    return-void
.end method

.method public synthetic lambda$setExtraViewController$1$ManageApplications$ApplicationsAdapter()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->lambda$setExtraViewController$1()V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 2118
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    sget v1, Lcom/android/settings/R$id;->sort_order_size:I

    if-ne v0, v1, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1723
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1724
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1725
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 1726
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1630
    check-cast p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V
    .locals 5

    const-string v0, "ManageApplications"

    const-string v1, "onBindViewHolder"

    .line 2169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->hideWidgetContainer()V

    .line 2172
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2174
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    invoke-interface {p2, p1}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    .line 2176
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 2180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 2181
    monitor-enter v0

    .line 2182
    :try_start_0
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 2183
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2184
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2185
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2186
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2187
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2188
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 2189
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableView(Landroid/content/pm/ApplicationInfo;)V

    .line 2191
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ManageApplications"

    const-string v3, "onBindViewHolder: hide checkbox/switch"

    .line 2195
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->hideWidgetContainer()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "ManageApplications"

    const-string v3, "onBindViewHolder: show checkbox/switch"

    .line 2192
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->showWidgetContainer()V

    .line 2198
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2199
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder: Disable system apps: entry.label = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " position = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " res = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settings/Utils;->isUninstallablePackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ManageApplications"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-object p2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settings/Utils;->isUninstallablePackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2202
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->enableItem(Z)V

    .line 2203
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    .line 2205
    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 2206
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->enableItem(Z)V

    .line 2207
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/UninstallAppsBackend;

    move-result-object p0

    iget-object p2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/UninstallAppsBackend;->isAddedToSelectedAppsList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2208
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setChecked(Z)V

    goto :goto_3

    .line 2210
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setChecked(Z)V

    goto :goto_3

    :cond_5
    const-string v1, "ManageApplications"

    const-string v4, "onBindViewHolder: !mUninstallMode"

    .line 2215
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 2217
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->VZW_APPS_SHOWN_DISABLED:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2218
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    const-string p2, "ManageApplications"

    const-string v0, "onBindViewHolder: setEnabled false"

    .line 2220
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    .line 2222
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->enableItem(Z)V

    goto :goto_2

    :cond_6
    const-string v0, "ManageApplications"

    const-string v1, "onBindViewHolder: setEnabled- check"

    .line 2224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    .line 2226
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->enableItem(Z)V

    .line 2229
    :goto_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 2230
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 2198
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1630
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .locals 0

    .line 1820
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 1821
    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1823
    :cond_0
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newViewForVzw(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 1825
    :goto_0
    new-instance p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1731
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1732
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 1733
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 1734
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 2057
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 2058
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onExtraViewCompleted()V
    .locals 1

    .line 2124
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .line 2111
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2112
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 2079
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 2081
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 2068
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    .line 2086
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2089
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2091
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 2092
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 2093
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2096
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void

    .line 2104
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->postNotifyItemChange(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 1994
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRebuildComplete size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    .line 2000
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2003
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_3

    .line 2004
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->addInstantAppIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2007
    :cond_3
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 2008
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    .line 2009
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2010
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_4

    .line 2011
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2012
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2014
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2015
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2017
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 2018
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2019
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    .line 2020
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2021
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->filterSearch(Ljava/lang/String;)V

    .line 2027
    :cond_5
    :goto_0
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-le p1, v2, :cond_6

    .line 2028
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 2029
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 2032
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 2033
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 2034
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    .line 2036
    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    return-void

    .line 2041
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasDisabled(Z)V

    .line 2042
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->haveInstantApps()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasInstant(Z)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 2063
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1796
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1797
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1798
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    const-string v0, "state_last_scroll_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1785
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1786
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 1787
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 1788
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_0

    .line 1789
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    :cond_0
    return-void
.end method

.method public rebuild()V
    .locals 4

    .line 1837
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1850
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 1854
    :cond_1
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 1856
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    .line 1857
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v1, :cond_2

    .line 1858
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    invoke-direct {v3, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v3

    .line 1860
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$2000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1861
    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1862
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_1

    .line 1865
    :cond_3
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    :goto_1
    move-object v0, v1

    .line 1869
    :cond_4
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    sget v3, Lcom/android/settings/R$id;->sort_order_size:I

    if-ne v1, v3, :cond_7

    .line 1870
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1878
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1875
    :cond_5
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1872
    :cond_6
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1881
    :cond_7
    sget v2, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    if-ne v1, v2, :cond_8

    .line 1882
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1883
    :cond_8
    sget v2, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    if-ne v1, v2, :cond_9

    .line 1884
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1886
    :cond_9
    sget v2, Lcom/android/settings/R$id;->sort_apps_by_date:I

    if-ne v1, v2, :cond_a

    .line 1887
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->INSTALL_OR_UPDATE_DATE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1891
    :cond_a
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1894
    :goto_2
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 1896
    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$pKSMV-qhB3s4VkYX3RV-HDOzUgo;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$pKSMV-qhB3s4VkYX3RV-HDOzUgo;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 1840
    :cond_b
    :goto_3
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not rebuilding until all the app entries loaded. !mHasReceivedLoadEntries="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " !mExtraInfoBridgeNull="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v3, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " !mHasReceivedBridgeCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ManageApplications"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public rebuild(I)V
    .locals 1

    .line 1809
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 1813
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 1814
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 1803
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p0, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 2

    .line 1770
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume!  mResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1772
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 1773
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 1774
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 1775
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p1, :cond_1

    .line 1776
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    .line 1778
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    .line 1780
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :goto_0
    return-void
.end method

.method public setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    .line 1738
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1739
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V
    .locals 0

    .line 1758
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    .line 1761
    new-instance p1, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$qMEtWjKuRu1RgrWKYhF-ScJDD7E;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$qMEtWjKuRu1RgrWKYhF-ScJDD7E;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V
    .locals 2

    .line 1743
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 1746
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 1747
    sget p1, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 1748
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1749
    sget p1, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    .line 1750
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 1751
    sget p1, Lcom/android/settings/R$id;->sort_order_alpha:I

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 1753
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :goto_0
    return-void
.end method

.method updateLoading()V
    .locals 2

    .line 2047
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2049
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_1

    .line 2051
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    :goto_1
    return-void
.end method
