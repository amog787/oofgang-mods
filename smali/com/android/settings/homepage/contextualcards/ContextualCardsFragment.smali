.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ContextualCardsFragment.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;,
        Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static sRestartLoaderNeeded:Z


# instance fields
.field private mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

.field private mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

.field private mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field mKeyEventReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->resetSession(Landroid/content/Context;)V

    return-void
.end method

.method private registerKeyEventReceiver()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mKeyEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScreenOffReceiver()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resetSession(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 157
    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    .line 158
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->unregisterScreenOffReceiver()V

    .line 159
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->newUiSession()V

    return-void
.end method

.method private unregisterKeyEventReceiver()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mKeyEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterScreenOffReceiver()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5de

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    .line 70
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/slices/SlicesFeatureProvider;->newUiSession()V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->initLocalBtManager(Landroid/content/Context;)V

    .line 73
    :cond_0
    new-instance v1, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    .line 75
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mKeyEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 105
    sget v0, Lcom/android/settings/R$layout;->settings_homepage:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    sget p2, Lcom/android/settings/R$id;->card_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    .line 107
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p2, v0, v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 109
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    new-instance p2, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-direct {p2, p3, p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    .line 112
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 113
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-virtual {p2, p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->setListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V

    .line 115
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p2, p0}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;)V

    .line 116
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-direct {p3, v0}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 117
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->unregisterScreenOffReceiver()V

    .line 98
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->registerScreenOffReceiver()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->registerKeyEventReceiver()V

    .line 83
    invoke-static {}, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->newVisibleUiSession()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p0

    sget-boolean v1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->loadContextualCards(Landroidx/loader/app/LoaderManager;Z)V

    const/4 p0, 0x0

    .line 86
    sput-boolean p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->unregisterKeyEventReceiver()V

    .line 92
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onWindowFocusChanged(Z)V

    return-void
.end method
