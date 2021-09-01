.class Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AppDataUsageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->addPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isQueryDataEmpty(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isHaveInternetPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "AppDataUsageProvider"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/content/Context;Ljava/lang/String;I)I

    const-string v0, "AppDataUsageProvider"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
