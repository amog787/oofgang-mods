.class public Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPDualChannelDownloadAccelerationSettings.java"

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

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppList:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;-><init>(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Landroid/widget/ListView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppListView:Landroid/widget/ListView;

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method private getSlaDownLoadOpenAppsListString()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_open_apps_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private getSlaDownLoadOpenAppsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 72
    sget v0, Lcom/android/settings/R$id;->op_app_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppListView:Landroid/widget/ListView;

    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_sla_down_load_head_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 75
    new-instance v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    .line 76
    iget-object v1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->startLoadData()V

    return-void
.end method

.method private refreshList(ILcom/oneplus/settings/better/OPAppModel;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;->getSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;->setSelected(IZ)V

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->getSlaDownLoadOpenAppsListString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oneplus/settings/utils/OPUtils;->isInSlaDownLoadOpenAppsListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p2}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->getSlaDownLoadOpenAppsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->deleteSlaDownLoadOpenAppString(Lcom/oneplus/settings/better/OPAppModel;)V

    :goto_0
    return-void
.end method

.method private startLoadData()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deleteSlaDownLoadOpenAppString(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->getSlaDownLoadOpenAppsListString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->getSlaDownLoadOpenAppsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget p1, Lcom/android/settings/R$layout;->op_sla_down_load_app_list_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v0, 0x64

    .line 67
    invoke-virtual {p1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    .line 68
    invoke-direct {p0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->initView()V

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

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->startVibratePattern(Landroid/content/Context;)V

    add-int/lit8 p1, p3, 0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->refreshList(ILcom/oneplus/settings/better/OPAppModel;)V

    return-void
.end method

.method public saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_open_apps_list"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
