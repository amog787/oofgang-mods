.class Lcom/android/settings/fuelgauge/BatteryInfo$1;
.super Ljava/lang/Object;
.source "BatteryInfo.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastLevel:B

.field lastTime:I

.field points:Landroid/util/SparseIntArray;

.field startTime:J

.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Lcom/android/settings/widget/UsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/widget/UsageView;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    return-void
.end method


# virtual methods
.method public onDataGap()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/widget/UsageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    long-to-int p1, p1

    .line 85
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    .line 86
    iget-byte p2, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastLevel:B

    .line 87
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public onParsingDone()V
    .locals 6

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;->onDataGap()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    .line 105
    invoke-virtual {v0, v2}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->startTime:J

    invoke-interface {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    goto :goto_1

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    if-ltz v0, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    iget-byte v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastLevel:B

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 113
    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 114
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 112
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 122
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/widget/UsageView;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/widget/UsageView;->configureGraph(II)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/widget/UsageView;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/UsageView;->addProjectedPath(Landroid/util/SparseIntArray;)V

    :cond_3
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 1

    .line 76
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->startTime:J

    .line 77
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    sub-long/2addr p3, p1

    invoke-static {v0, p3, p4}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J

    .line 78
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/widget/UsageView;

    invoke-virtual {p1}, Lcom/android/settings/widget/UsageView;->clearPaths()V

    .line 80
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/widget/UsageView;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J

    move-result-wide p2

    long-to-int p0, p2

    const/16 p2, 0x64

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/widget/UsageView;->configureGraph(II)V

    return-void
.end method
