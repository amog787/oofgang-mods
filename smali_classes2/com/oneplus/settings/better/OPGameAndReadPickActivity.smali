.class public Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGameAndReadPickActivity.java"

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

.field private mAppListView:Landroid/widget/ListView;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppType:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;-><init>(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 88
    sget v0, Lcom/android/settings/R$id;->op_app_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    .line 91
    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    .line 92
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mLoadingContainer:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget p1, Lcom/android/settings/R$layout;->op_game_read_app_list_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "op_load_app_tyep"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 72
    iget v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_0

    .line 73
    sget v0, Lcom/android/settings/R$string;->oneplus_game_mode_app_list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_1

    .line 75
    sget v0, Lcom/android/settings/R$string;->oneplus_read_mode_app_list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    .line 77
    sget v0, Lcom/android/settings/R$string;->oneplus_app_locker_add_apps:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string p1, "appops"

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 82
    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0, v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 83
    iget v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    .line 105
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    .line 106
    iget-object p2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {p2, p3}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getSelected(I)Z

    move-result p2

    const/4 p4, 0x1

    xor-int/2addr p2, p4

    .line 107
    iget-object p5, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {p5, p3, p2}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setSelected(IZ)V

    .line 108
    iget-object p3, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget p5, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object p5

    .line 114
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->isInRemovedGameAppListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1, p4}, Lcom/oneplus/settings/better/OPAppModel;->setEditMode(Z)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 119
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 121
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->saveGameModeRemovedAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
