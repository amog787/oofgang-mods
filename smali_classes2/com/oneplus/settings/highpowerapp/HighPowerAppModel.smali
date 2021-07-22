.class public Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDataObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDataObserverListLock:Ljava/lang/Object;

.field private mInstalledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 37
    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mContext:Ljava/lang/ref/SoftReference;

    .line 41
    invoke-static {p1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    .line 42
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->process()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private notifyDataChanged()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v1}, Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;->OnDataChanged()V

    goto :goto_0

    .line 212
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private process()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-interface {v0}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HighPowerAppModel getBgPowerHungryList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HighPowerAppModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 73
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 80
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mInstalledPackages:Ljava/util/Map;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :cond_2
    new-instance v1, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->notifyDataChanged()V

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method public initialize()V
    .locals 1

    .line 47
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$1;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    .line 56
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    check-cast p1, Landroid/widget/Switch;

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->setBgMonitorMode(Z)V

    .line 152
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopApp(Ljava/lang/String;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 102
    iget-object v2, v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mActivityManager:Lcom/oneplus/settings/highpowerapp/IMyActivityManager;

    iget v0, v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    invoke-interface {p0, p1, v0}, Lcom/oneplus/settings/highpowerapp/IMyActivityManager;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mDataObserverList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update()V
    .locals 1

    .line 60
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;-><init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
