.class public Lcom/android/settings/applications/RecentAppStatsMixin;
.super Ljava/lang/Object;
.source "RecentAppStatsMixin.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnStart;"
    }
.end annotation


# static fields
.field private static final SKIP_SYSTEM_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppStatsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCalendar:Ljava/util/Calendar;

.field private final mContext:Landroid/content/Context;

.field private final mMaximumApps:I

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field final mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RecentAppStatsMixin;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    const-string v1, "android"

    const-string v2, "com.android.phone"

    const-string v3, "com.android.settings"

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.providers.calendar"

    const-string v6, "com.android.providers.media"

    .line 70
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    .line 82
    iput p2, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mMaximumApps:I

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mUserId:I

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mPm:Landroid/content/pm/PackageManager;

    .line 85
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mPowerManager:Landroid/os/PowerManager;

    .line 86
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 87
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 87
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mRecentApps:Ljava/util/List;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mAppStatsListeners:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onStart$0(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mRecentApps:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;->onReloadDataCompleted(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onStart$1()V
    .locals 3

    .line 96
    iget v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mMaximumApps:I

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RecentAppStatsMixin;->loadDisplayableRecentApps(I)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mAppStatsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;

    .line 98
    new-instance v2, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;-><init>(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldIncludePkgInRecents(Landroid/app/usage/UsageStats;)Z
    .locals 5

    .line 161
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    const-string v1, "RecentAppStatsMixin"

    const/4 v2, 0x0

    if-gez p1, :cond_0

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid timestamp (usage time is more than 24 hours ago), skipping "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 168
    :cond_0
    sget-object p1, Lcom/android/settings/applications/RecentAppStatsMixin;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "System package, skipping "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settingslib/applications/AppUtils;->isHiddenSystemModule(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 175
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 178
    iget-object v3, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_4

    .line 180
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mUserId:I

    .line 181
    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 183
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not a user visible or instant app, skipping "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mAppStatsListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 2

    .line 106
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RecentAppStatsMixin;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onStart$0$RecentAppStatsMixin(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/RecentAppStatsMixin;->lambda$onStart$0(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    return-void
.end method

.method public synthetic lambda$onStart$1$RecentAppStatsMixin()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->lambda$onStart$1()V

    return-void
.end method

.method loadDisplayableRecentApps(I)V
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mCalendar:Ljava/util/Calendar;

    .line 121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 124
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    .line 127
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 128
    invoke-direct {p0, v5}, Lcom/android/settings/applications/RecentAppStatsMixin;->shouldIncludePkgInRecents(Landroid/app/usage/UsageStats;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 131
    :cond_1
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    if-nez v7, :cond_2

    .line 134
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v7, v5}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 144
    iget-object v2, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 145
    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mUserId:I

    .line 144
    invoke-virtual {v2, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mRecentApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_4

    :cond_6
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 95
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$tHPYR7EWYqjMA7qzzLv0iJ3sqro;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$tHPYR7EWYqjMA7qzzLv0iJ3sqro;-><init>(Lcom/android/settings/applications/RecentAppStatsMixin;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
