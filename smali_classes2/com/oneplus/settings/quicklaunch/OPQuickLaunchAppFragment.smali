.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;
.super Landroidx/fragment/app/Fragment;
.source "OPQuickLaunchAppFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
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

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationListAdapter:Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mAppList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationListAdapter:Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Landroid/widget/ListView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3

    .line 125
    sget v0, Lcom/android/settings/R$id;->op_app_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mListView:Landroid/widget/ListView;

    .line 126
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mAppList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationListAdapter:Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    .line 127
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mLoadingContainer:Landroid/view/View;

    .line 130
    sget v0, Lcom/android/settings/R$id;->op_empty_list_tips_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mEmptyView:Landroid/view/View;

    .line 131
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    .line 133
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 105
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 106
    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 119
    sget p2, Lcom/android/settings/R$layout;->op_app_list_activity:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->initViews(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationListAdapter:Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    invoke-virtual {p1, p3}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->getSelected(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 143
    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsAccount(Landroid/content/Context;)I

    move-result p2

    const/4 p4, 0x6

    if-lt p2, p4, :cond_0

    .line 144
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->oneplus_max_shortcuts_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mOPApplicationListAdapter:Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    invoke-virtual {p2, p3, p1}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->setSelected(IZ)V

    .line 149
    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/better/OPAppModel;

    .line 150
    new-instance p3, Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 158
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
