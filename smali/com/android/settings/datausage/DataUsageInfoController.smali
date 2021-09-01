.class public Lcom/android/settings/datausage/DataUsageInfoController;
.super Ljava/lang/Object;
.source "DataUsageInfoController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 4

    .line 46
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 48
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 50
    :cond_0
    iget-wide p0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    move-wide v0, p0

    :cond_1
    return-wide v0
.end method

.method public updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    .line 33
    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 35
    :cond_1
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    .line 36
    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    :cond_2
    :goto_0
    return-void
.end method
