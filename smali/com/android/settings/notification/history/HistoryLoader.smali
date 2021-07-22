.class public Lcom/android/settings/notification/history/HistoryLoader;
.super Ljava/lang/Object;
.source "HistoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;
    }
.end annotation


# instance fields
.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/notification/history/HistoryLoader;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/notification/history/HistoryLoader;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 45
    iput-object p3, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic lambda$load$0(Lcom/android/settings/notification/history/NotificationHistoryPackage;Lcom/android/settings/notification/history/NotificationHistoryPackage;)I
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/history/NotificationHistoryPackage;->getMostRecent()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/settings/notification/history/NotificationHistoryPackage;->getMostRecent()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic lambda$load$1(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;Ljava/util/List;)V
    .locals 0

    .line 89
    invoke-interface {p0, p1}, Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;->onHistoryLoaded(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$load$2(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V
    .locals 7

    .line 51
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/android/settings/notification/history/HistoryLoader;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/history/HistoryLoader;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/history/HistoryLoader;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object v1

    .line 55
    :goto_0
    invoke-virtual {v1}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getNextNotification()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    .line 61
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/notification/history/NotificationHistoryPackage;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    .line 62
    iget-object v5, v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    sget-object v0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$3P0zrtX5h9vNKXuBLjowRXTNVB4;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$3P0zrtX5h9vNKXuBLjowRXTNVB4;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    const v5, 0xc2200

    iget v6, v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    .line 78
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 72
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v4, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    .line 81
    iget-object v4, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v5, v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    .line 82
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 81
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 86
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 89
    :cond_2
    new-instance p0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$BdJnbuIW0bGWnhQE_r-nOq_5juo;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$BdJnbuIW0bGWnhQE_r-nOq_5juo;-><init>(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "HistoryLoader"

    const-string v0, "Error loading history"

    .line 91
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$load$2$HistoryLoader(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/HistoryLoader;->lambda$load$2(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V

    return-void
.end method

.method public load(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$uQIOoUuQa7GJVkIYWinaA87-t1w;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/history/-$$Lambda$HistoryLoader$uQIOoUuQa7GJVkIYWinaA87-t1w;-><init>(Lcom/android/settings/notification/history/HistoryLoader;Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
