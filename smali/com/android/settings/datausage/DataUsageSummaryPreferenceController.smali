.class public Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DataUsageSummaryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final KEY:Ljava/lang/String; = "status_header"

.field private static final PETA:J = 0x38d7ea4c68000L

.field private static final RELATIVE_SIZE_LARGE:F = 1.5625f

.field private static final RELATIVE_SIZE_SMALL:F = 0.64f

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCycleEnd:J

.field private mCycleStart:J

.field private mDataBarSize:J

.field protected mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field protected mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDataplanCount:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mHasMobileData:Z

.field private mHistoricalUsageLevel:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mManageSubscriptionIntent:Landroid/content/Intent;

.field protected mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mSnapshotTime:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 1

    const-string v0, "status_header"

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 112
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 113
    invoke-virtual {p0, p4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->init(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/net/DataUsageController;Lcom/android/settings/datausage/DataUsageInfoController;Landroid/net/NetworkTemplate;Lcom/android/settingslib/NetworkPolicyEditor;ILandroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/widget/EntityHeaderController;Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 1

    const-string v0, "status_header"

    .line 160
    invoke-direct {p0, p6, v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 162
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    .line 163
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 164
    iput-object p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 165
    iput p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    .line 167
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 168
    iput-object p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 169
    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 170
    iput p10, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return-void
.end method

.method private displayUsageLevel(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    return-wide p1

    .line 286
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHistoricalUsageLevel:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p1
.end method

.method private static getPrimaryPlan(Ljava/util/List;)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)",
            "Landroid/telephony/SubscriptionPlan;"
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 379
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionPlan;

    .line 380
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 381
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->saneSize(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$updateState$0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    const-wide/16 v0, -0x1

    .line 299
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 300
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 301
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 302
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 303
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 304
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    if-eqz p2, :cond_2

    .line 306
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz p1, :cond_2

    .line 307
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 308
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Ljava/util/List;)Landroid/telephony/SubscriptionPlan;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 312
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 313
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 314
    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 317
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 318
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 320
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 321
    iget-object v0, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 323
    iget-object p1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 325
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 328
    :cond_2
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->createManageSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Have "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " plans, dflt sub-id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", intent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataUsageController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static saneSize(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x38d7ea4c68000L

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unlimited(J)Z
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateConfiguration(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    .locals 2

    .line 128
    const-class v0, Landroid/net/NetworkPolicyManager;

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 130
    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v1, v0}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 132
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 133
    invoke-virtual {v0, p2}, Lcom/android/settingslib/net/DataUsageController;->setSubscriptionId(I)V

    .line 134
    new-instance v0, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    if-eqz p3, :cond_0

    .line 137
    sget p3, Lcom/android/settings/R$string;->cell_data_template:I

    iput p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 138
    invoke-static {p1, p2}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 140
    sget p1, Lcom/android/settings/R$string;->wifi_data_template:I

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 141
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    goto :goto_0

    .line 143
    :cond_1
    sget p3, Lcom/android/settings/R$string;->ethernet_data_template:I

    iput p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 144
    invoke-static {p1, p2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method createManageSubscriptionIntent(I)Landroid/content/Intent;
    .locals 4

    const-string v0, "netpolicy"

    .line 345
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 344
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    .line 348
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get subscription plan owner for subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 353
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v1

    .line 358
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 362
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 364
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 367
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 202
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method getSubscriptionPlans(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->get()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 187
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateState$0$DataUsageSummaryPreferenceController()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->lambda$updateState$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const/4 v2, 0x0

    .line 177
    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    .line 181
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 13

    .line 207
    check-cast p1, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 209
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateConfiguration(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V

    .line 214
    :cond_0
    new-instance v1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$geeH2zQcF9CcVHPt8XA0jkcE3-w;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreferenceController$geeH2zQcF9CcVHPt8XA0jkcE3-w;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHistoricalUsageLevel:Ljava/util/concurrent/Future;

    .line 217
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 218
    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v6

    .line 220
    iget-wide v1, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 223
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    .line 224
    invoke-virtual {p1, v8, v3, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;Z)V

    .line 242
    invoke-direct {p0, v6, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/telephony/SubscriptionInfo;)V

    .line 244
    iget-wide v4, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    iget-wide v4, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->cell_data_warning_and_limit:I

    .line 246
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v11, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 247
    invoke-static {v4, v11, v12}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v5, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 248
    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    .line 245
    invoke-static {v0, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-wide v4, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->cell_data_warning:I

    .line 251
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v5, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 252
    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v8

    .line 250
    invoke-static {v0, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-wide v4, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->cell_data_limit:I

    .line 255
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v5, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 256
    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v8

    .line 254
    invoke-static {v0, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    cmp-long v0, v3, v9

    if-gtz v0, :cond_4

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    cmp-long v0, v3, v9

    if-gez v0, :cond_4

    const-string v0, "DataUsageController"

    const-string v3, "Display data usage from history"

    .line 262
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->displayUsageLevel(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    const-wide/16 v0, -0x1

    .line 264
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 267
    :cond_4
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    .line 269
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    cmp-long v0, v0, v9

    if-gtz v0, :cond_5

    .line 270
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    goto :goto_1

    .line 272
    :cond_5
    invoke-virtual {p1, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 274
    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 273
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 275
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setProgress(F)V

    .line 277
    :goto_1
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void

    .line 227
    :cond_6
    iget-object v0, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {p1, v7, v0, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;Z)V

    .line 229
    invoke-virtual {p1, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    .line 230
    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->displayUsageLevel(J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    .line 233
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    .line 234
    iget-wide v1, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
