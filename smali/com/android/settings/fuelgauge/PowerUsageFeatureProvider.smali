.class public interface abstract Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProvider.java"


# virtual methods
.method public abstract getAdvancedUsageScreenInfoString()Ljava/lang/String;
.end method

.method public abstract getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
.end method

.method public abstract getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;
.end method

.method public abstract getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isEstimateDebugEnabled()Z
.end method

.method public abstract isSmartBatterySupported()Z
.end method

.method public abstract isTypeService(Lcom/android/internal/os/BatterySipper;)Z
.end method

.method public abstract isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
.end method
