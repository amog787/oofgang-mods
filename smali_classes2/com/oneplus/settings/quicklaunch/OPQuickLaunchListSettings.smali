.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickLaunchListSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;


# instance fields
.field private mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

.field private mAddView:Landroid/widget/TextView;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mLastListSettings:Ljava/lang/String;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMenu:Landroid/view/Menu;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 2

    .line 160
    sget v0, Lcom/android/settings/R$id;->dragList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    sget v0, Lcom/android/settings/R$id;->add_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_shortcuts_add:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/TextView;

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->parseAllQuickLaunchStrings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_quick_launcher_edited"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setAppList(Ljava/util/List;)V

    .line 141
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-direct {v0, v2, v3}, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)V

    .line 142
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 143
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setRemoveMode(Z)V
    .locals 1

    .line 247
    iput-boolean p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setRemoveMode(Z)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 266
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-boolean p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 268
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 108
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    sget v0, Lcom/android/settings/R$string;->oneplus_shortcuts_settings:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 96
    :cond_0
    new-instance p1, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 100
    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mLastListSettings:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 128
    sget p3, Lcom/android/settings/R$layout;->op_drag_list:I

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->configureDragAndDrop(Landroid/view/View;)V

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    return v3

    .line 243
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 226
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    if-eqz p1, :cond_3

    .line 228
    iput-boolean v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    .line 229
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->removeChecked()V

    .line 231
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    goto :goto_1

    .line 233
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    :goto_1
    return v3
.end method

.method public onPause()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mLastListSettings:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 121
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->initData()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    const-string v1, "appRemoveMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mShowingRemoveDialog:Z

    const-string v1, "showingAppRemoveDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "appRemoveMode"

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    const-string v0, "showingAppRemoveDialog"

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mShowingRemoveDialog:Z

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    .line 196
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    return-void
.end method
