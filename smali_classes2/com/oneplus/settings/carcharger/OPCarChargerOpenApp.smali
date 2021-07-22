.class public Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPCarChargerOpenApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private hasRecommendedCount:I

.field private mCarChargerAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

.field private mCarChargerOpenAppListView:Landroid/widget/ListView;

.field private mCarChargerRecommendedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;-><init>(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getSelectionPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Landroid/widget/ListView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private createCarModeRecommendedAppsList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    sget v1, Lcom/android/settings/R$string;->oneplus_auto_open_app_none:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 102
    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->op_car_mode_recommended_apps:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget v2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    .line 107
    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    aget-object v4, v0, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget-object v5, v0, v1

    invoke-static {v3, v5}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    return-object p0
.end method

.method private getSelectionPosition()I
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_charger_mode_auto_open_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz v0, :cond_0

    .line 66
    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private initData()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 85
    sget v0, Lcom/android/settings/R$id;->op_car_charger_open_app_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x50

    .line 89
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    .line 90
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mLoadingContainer:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    .line 93
    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->createCarModeRecommendedAppsList()Ljava/util/List;

    .line 94
    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->initData()V

    return-void
.end method

.method private refreshList()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_care_charger_auto_open_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->setSelectedItem(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget p1, Lcom/android/settings/R$layout;->op_car_charger_open_app_list:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 78
    sget v0, Lcom/android/settings/R$string;->oneplus_auto_open_specified_app:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->initView()V

    return-void
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

    .line 134
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "op_care_charger_auto_open_app"

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "charge_app"

    invoke-static {p2, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->refreshList()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->refreshList()V

    return-void
.end method
