.class public Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;
.super Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;
.source "InvalidOperatorDataModel.java"


# static fields
.field private static sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/security/network/operator/OperatorModelInterface;
    .locals 2

    .line 21
    sget-object v0, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/oneplus/security/network/operator/OperatorModelInterface;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;

    invoke-direct {v1}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;-><init>()V

    sput-object v1, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    return-object v0
.end method


# virtual methods
.method public addQueryResultListener(I)V
    .locals 0

    return-void
.end method

.method public clearData()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->clearData()V

    .line 112
    sget-object p0, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 113
    sput-object p0, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->sOperatorData:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_0
    return-void
.end method

.method public getAccountDay(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPkgTotalInByte(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getPkgUsedMonthlyInByte(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public removeQueryResultListener(I)V
    .locals 0

    return-void
.end method

.method public requesetDataUsage(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object p0

    const/4 v0, -0x1

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "total"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "used"

    .line 146
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "slotid"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requesetDataUsage(IZ)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->requesetDataUsage(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public requesetDataUsageAndNotify(I)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    return-void
.end method

.method public requesetPkgMonthlyUsageAndTotalInByte(I)V
    .locals 6

    .line 73
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->getPkgTotalInByte(I)J

    move-result-wide v2

    .line 74
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->getPkgUsedMonthlyInByte(I)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyMonthlyUsageAndTotalChanged(IJJ)V

    return-void
.end method

.method public requestOperatorAccountDay(I)V
    .locals 1

    .line 91
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->getAccountDay(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyAccountDayChanged(II)V

    return-void
.end method

.method public setOperatorAccountDay(II)V
    .locals 0

    return-void
.end method

.method public setPackageMonthlyUsage(IJ)V
    .locals 0

    return-void
.end method

.method public setPackageTotalUsage(IJ)V
    .locals 0

    return-void
.end method

.method public setWarnByteValue(IJ)V
    .locals 0

    return-void
.end method
