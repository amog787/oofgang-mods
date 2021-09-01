.class public Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;


# static fields
.field static final USE_FAKE_DATA:Z


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field mAppListGroup:Landroidx/preference/PreferenceGroup;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mForceCloseListener:Landroid/view/View$OnClickListener;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mHandler:Landroid/os/Handler;

.field private mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

.field private mPauseUpdate:Z

.field private mPrefContext:Landroid/content/Context;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mStatsType:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    .line 143
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mStatsType:I

    .line 102
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    .line 596
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mForceCloseListener:Landroid/view/View$OnClickListener;

    if-eqz p3, :cond_0

    .line 146
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 149
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string/jumbo p2, "user"

    .line 151
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 152
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 153
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 155
    new-instance p2, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;-><init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPauseUpdate:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->nextUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-object p0
.end method

.method private addNotAvailableMessage()V
    .locals 3

    const-string v0, "not_available"

    .line 561
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 564
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 565
    sget v0, Lcom/android/settings/R$string;->power_usage_not_available:I

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 566
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 567
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 476
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 477
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 479
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Landroid/os/BatteryStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 620
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 625
    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v1, :cond_8

    .line 628
    invoke-virtual {v1}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighPowerApp list.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryAppList"

    invoke-static {v3, v2}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    .line 630
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz p2, :cond_3

    .line 632
    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mStatsType:I

    invoke-virtual {p2, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 633
    :goto_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_5

    const-wide/16 v8, 0x0

    cmpl-double p0, v8, v4

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const-wide v8, 0x3fe3333333333333L    # 0.6

    int-to-double v10, p2

    div-double/2addr v8, v10

    mul-double/2addr v8, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-wide v8, v6

    .line 636
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "concatHighPowerApp list.size="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 638
    iget v1, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ", uid="

    if-nez v1, :cond_7

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatHighPowerApp add pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v4, Lcom/android/settings/fuelgauge/FakeUid;

    iget p2, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-direct {v4, p2}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    invoke-direct {v1, v2, v4, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 641
    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 642
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 644
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatHighPowerApp exist pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget p2, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    .line 646
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v1, v1, v8

    if-gez v1, :cond_6

    .line 647
    iput-wide v8, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    goto :goto_5

    :cond_8
    return-object p1
.end method

.method private getCachedCount()I
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    .line 358
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 359
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_8

    .line 360
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 364
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 366
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v6

    .line 365
    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 370
    :cond_0
    invoke-static {v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    const-string v8, "mediaserver"

    .line 371
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v6, 0x3e8

    .line 378
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 380
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-direct {v9, v6}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 382
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 383
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 384
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object v5, v7

    .line 388
    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3

    .line 391
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 394
    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 395
    invoke-virtual {v6, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 396
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 398
    iput-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 401
    :cond_4
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 402
    array-length v7, v7

    goto :goto_1

    :cond_5
    move v7, v3

    .line 403
    :goto_1
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 404
    array-length v8, v8

    goto :goto_2

    :cond_6
    move v8, v3

    :goto_2
    if-lez v8, :cond_9

    add-int v9, v7, v8

    .line 406
    new-array v9, v9, [Ljava/lang/String;

    if-lez v7, :cond_7

    .line 408
    iget-object v10, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v10, v3, v9, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    :cond_7
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v5, v3, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iput-object v9, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_3

    .line 417
    :cond_8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 421
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_4
    if-ge v3, p1, :cond_b

    .line 423
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 427
    :cond_b
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    return-object v1
.end method

.method private static isSharedGid(I)Z
    .locals 0

    .line 501
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 505
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private nextUpdate()V
    .locals 3

    .line 612
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 614
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 550
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 552
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private setPowerState(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/PowerGaugePreference;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const/4 v2, -0x1

    .line 663
    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setState(I)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz p0, :cond_3

    .line 666
    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 667
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerState list.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryAppList"

    invoke-static {v1, v0}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 670
    iget v2, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerState pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget v2, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 673
    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->getState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setState(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private shouldShowSummary(Lcom/android/internal/os/BatterySipper;)Z
    .locals 4

    .line 488
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->whitelist_hide_summary_in_battery_usage:I

    .line 489
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 490
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 492
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 493
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public OnDataChanged()V
    .locals 2

    const-string v0, "BatteryAppList"

    const-string v1, "OnDataChanged"

    .line 574
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    if-nez v1, :cond_0

    const-string p0, "null activity"

    .line 578
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 581
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 190
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 458
    :cond_0
    iget-object p0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne p0, v0, :cond_1

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 460
    :cond_1
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq p0, v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 462
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 465
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryAppList"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "-1"

    return-object p0
.end method

.method extractKeyFromUid(I)Ljava/lang/String;
    .locals 0

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 206
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_0

    .line 207
    check-cast p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 208
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v4

    .line 209
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 183
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 161
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPauseUpdate:Z

    .line 165
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 166
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPauseUpdate:Z

    .line 174
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->nextUpdate()V

    return-void
.end method

.method public refreshAppListGroup(Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 221
    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 222
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    sget v3, Lcom/android/settings/R$string;->power_usage_list_summary:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    const-string v4, "screen.full"

    .line 226
    invoke-virtual {v2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    invoke-direct {v0, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 238
    invoke-direct {v0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;

    move-result-object v2

    .line 240
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 241
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 242
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v8, :cond_10

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_a

    .line 245
    :cond_2
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v8}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-eqz v8, :cond_3

    .line 246
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 247
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 248
    iget v11, v11, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 250
    :cond_3
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->op_app_already_uninstalled:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 253
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v9

    .line 255
    :goto_1
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v8}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 256
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v4, v4, v10

    if-gez v4, :cond_5

    goto/16 :goto_9

    :cond_5
    if-eqz p2, :cond_6

    const-wide/16 v4, 0x0

    goto :goto_2

    .line 264
    :cond_6
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v4, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v4

    .line 265
    :goto_2
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 267
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v15, v9

    move/from16 v18, v15

    :goto_3
    const/4 v13, 0x1

    if-ge v15, v8, :cond_e

    .line 269
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    .line 271
    iget-wide v10, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v10, v10, v16

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    cmpg-double v10, v10, v16

    if-gez v10, :cond_7

    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    move/from16 v19, v15

    goto :goto_4

    .line 275
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v16

    .line 278
    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-wide v11, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move v9, v13

    move-object/from16 p2, v14

    move-wide/from16 v13, v16

    move/from16 v19, v15

    move-wide v15, v4

    move/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double v14, v10, v12

    double-to-int v14, v14

    if-ge v14, v9, :cond_8

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-wide v10, v12

    :cond_8
    add-double/2addr v12, v10

    double-to-int v12, v12

    if-ge v12, v9, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v12, p2

    .line 291
    invoke-virtual {v0, v12}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v13

    if-eqz v13, :cond_a

    :goto_4
    move-object/from16 v17, v2

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 294
    :cond_a
    new-instance v13, Landroid/os/UserHandle;

    invoke-virtual {v12}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 295
    new-instance v14, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-direct {v14, v15, v9, v1, v12}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 297
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9, v13}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 300
    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v15

    .line 299
    invoke-virtual {v9, v15, v13}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 303
    invoke-virtual {v0, v12}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v13

    .line 304
    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v15, :cond_b

    .line 306
    new-instance v15, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v15, v2, v1, v9, v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 308
    invoke-virtual {v15, v13}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object/from16 v17, v2

    .line 310
    :goto_5
    iput-wide v10, v12, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 311
    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v19, 0x1

    .line 312
    invoke-virtual {v15, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 313
    invoke-virtual {v15, v10, v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    const/4 v1, 0x0

    .line 314
    invoke-virtual {v15, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    .line 316
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mForceCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-virtual {v12}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-wide v1, v12, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_c

    iget-object v1, v12, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v1, v2, :cond_c

    .line 320
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, v12, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_6

    :cond_c
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 327
    :goto_6
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v15}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 328
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedCount()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x15

    if-le v1, v2, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v18, v9

    :goto_7
    add-int/lit8 v15, v19, 0x1

    move-object/from16 v1, p1

    move v9, v10

    move-object/from16 v2, v17

    goto/16 :goto_3

    :cond_e
    move/from16 v9, v18

    .line 334
    :goto_8
    invoke-direct {v0, v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->setPowerState(Ljava/util/Map;)V

    :goto_9
    if-nez v9, :cond_f

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->addNotAvailableMessage()V

    .line 340
    :cond_f
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 342
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    :cond_10
    :goto_a
    return-void
.end method

.method setUsageSummary(Landroidx/preference/Preference;Lcom/android/internal/os/BatterySipper;)V
    .locals 4

    .line 434
    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 435
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->shouldShowSummary(Lcom/android/internal/os/BatterySipper;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v0, v0

    const/4 v3, 0x0

    .line 437
    invoke-static {v2, v0, v1, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 439
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->battery_used_for:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object v0, p2, v3

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 438
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2

    .line 449
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->isHiddenSystemModule(Lcom/android/internal/os/BatterySipper;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
