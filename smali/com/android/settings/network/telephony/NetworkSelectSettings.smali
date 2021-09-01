.class public Lcom/android/settings/network/telephony/NetworkSelectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkSelectSettings.java"


# instance fields
.field private final mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsAdvancedScanSupported:Z

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mProgressHeader:Landroid/view/View;

.field private mRequestIdManualNetworkScan:J

.field private mRequestIdManualNetworkSelect:J

.field mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

.field private mShow4GForLTE:Z

.field private mStatusMessagePreference:Landroidx/preference/Preference;

.field private mSubId:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWaitingForNumberOfScanResults:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 231
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    .line 322
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    return-wide v0
.end method

.method static synthetic access$210(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 4

    .line 65
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->clearPreferenceSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addMessagePreference(I)V
    .locals 1

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 487
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 488
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private clearPreferenceSummary()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 460
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 461
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v2, 0x0

    .line 462
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private forceUpdateConnectedPreferenceCategory()V
    .locals 7

    .line 416
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 418
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x1

    .line 420
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 426
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkSelectSettings"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 436
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellIdentity;

    .line 441
    new-instance v3, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Landroid/telephony/CellIdentity;Ljava/util/List;Z)V

    .line 443
    sget v2, Lcom/android/settings/R$string;->network_connected:I

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 447
    sget v2, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(I)V

    .line 448
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private getNewRequestId()J
    .locals 4

    .line 467
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    iget-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isProgressBarVisible()Z
    .locals 1

    .line 472
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$onPreferenceTreeClick$0(Ljava/lang/String;I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 207
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1, v1, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startNetworkQuery()V
    .locals 3

    const/4 v0, 0x1

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 493
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    if-eqz v1, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNewRequestId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    const-wide/16 v1, 0x2

    .line 495
    iput-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    .line 497
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 498
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAdvancedScanSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 497
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->startNetworkScan(I)V

    :cond_1
    return-void
.end method

.method private stopNetworkQuery()V
    .locals 3

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 507
    iput-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    .line 508
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->stopNetworkQuery()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSelectSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 218
    sget p0, Lcom/android/settings/R$xml;->choose_network:I

    return p0
.end method

.method public synthetic lambda$onPreferenceTreeClick$0$NetworkSelectSettings(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onPreferenceTreeClick$0(Ljava/lang/String;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isAdvancedPlmnScanSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAdvancedScanSupported:Z

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsAdvancedScanSupported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAdvancedScanSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkSelectSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const-string p1, "network_operators_preference"

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 109
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 113
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 114
    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/settings/network/telephony/NetworkScanHelper;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "NetworkSelectSettings"

    const-string v1, "onDestroy()"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 517
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->clearPreferenceSummary()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v0, :cond_0

    .line 185
    sget v2, Lcom/android/settings/R$string;->network_disconnected:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 188
    :cond_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 189
    sget v0, Lcom/android/settings/R$string;->network_connecting:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x4ba

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 196
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNewRequestId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    const-wide/16 v2, 0x2

    .line 199
    iput-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    .line 200
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getAccessNetworkType()I

    move-result v0

    .line 202
    new-instance v2, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return v1
.end method

.method public onStart()V
    .locals 4

    const-string v0, "NetworkSelectSettings"

    const-string v1, "onStart()"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateForbiddenPlmns()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 152
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->startNetworkQuery()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop() mWaitingForNumberOfScanResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSelectSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 171
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    sget p1, Lcom/android/settings/R$layout;->op_progress_header:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->progress_bar_animation:I

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->forceUpdateConnectedPreferenceCategory()V

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 480
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateAllPreferenceCategory()Lcom/android/settings/network/telephony/NetworkOperatorPreference;
    .locals 9

    .line 348
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 353
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 354
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 358
    :goto_1
    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 361
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->isSameCell(Landroid/telephony/CellInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 363
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    .line 369
    :goto_2
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 370
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    if-ge v1, v0, :cond_4

    .line 374
    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 375
    instance-of v6, v5, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v6, :cond_3

    .line 377
    check-cast v5, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 378
    invoke-virtual {v5, v4}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;)V

    goto :goto_3

    .line 380
    :cond_3
    iget-object v6, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    move-object v5, v2

    :goto_3
    if-nez v5, :cond_5

    .line 385
    new-instance v5, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v8, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Landroid/telephony/CellInfo;Ljava/util/List;Z)V

    .line 387
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 388
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 390
    :cond_5
    invoke-virtual {v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 393
    sget v3, Lcom/android/settings/R$string;->network_connected:I

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(I)V

    move-object v3, v5

    goto :goto_4

    .line 396
    :cond_6
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v3
.end method

.method updateForbiddenPlmns()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    return-void
.end method
