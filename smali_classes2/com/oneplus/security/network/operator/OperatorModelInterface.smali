.class public interface abstract Lcom/oneplus/security/network/operator/OperatorModelInterface;
.super Ljava/lang/Object;
.source "OperatorModelInterface.java"


# virtual methods
.method public abstract addQueryResultListener(I)V
.end method

.method public abstract addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V
.end method

.method public abstract clearData()V
.end method

.method public abstract getAccountDay(I)I
.end method

.method public abstract getPkgTotalInByte(I)J
.end method

.method public abstract getPkgUsedMonthlyInByte(I)J
.end method

.method public abstract registerOperatorAccountDayUpdater(Lcom/oneplus/security/network/operator/OperatorAccountDayUpdater;)V
.end method

.method public abstract removeOperatorAccountDayUpdater(Lcom/oneplus/security/network/operator/OperatorAccountDayUpdater;)V
.end method

.method public abstract removeQueryResultListener(I)V
.end method

.method public abstract removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V
.end method

.method public abstract requesetDataUsage(IZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requesetDataUsageAndNotify(I)V
.end method

.method public abstract requesetPkgMonthlyUsageAndTotalInByte(I)V
.end method

.method public abstract requestOperatorAccountDay(I)V
.end method

.method public abstract setOperatorAccountDay(II)V
.end method

.method public abstract setPackageMonthlyUsage(IJ)V
.end method

.method public abstract setPackageTotalUsage(IJ)V
.end method

.method public abstract setWarnByteValue(IJ)V
.end method
