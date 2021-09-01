.class public final Lcom/android/settingslib/fuelgauge/Estimate$Companion;
.super Ljava/lang/Object;
.source "Estimate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/fuelgauge/Estimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settingslib/fuelgauge/Estimate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCachedEstimateIfAvailable(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "battery_estimates_last_update_time"

    const-wide/16 v0, -0x1

    .line 45
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 48
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 48
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/android/settingslib/fuelgauge/Estimate;

    const/4 v0, -0x1

    int-to-long v0, v0

    const-string v2, "time_remaining_estimate_millis"

    .line 51
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "time_remaining_estimate_based_on_usage"

    const/4 v5, 0x0

    .line 54
    invoke-static {p0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move v5, v6

    :cond_1
    const-string v4, "average_time_to_discharge"

    .line 56
    invoke-static {p0, v4, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-object v0, p1

    move-wide v1, v2

    move v3, v5

    move-wide v4, v6

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final getLastCacheUpdateTime(Landroid/content/Context;)Ljava/time/Instant;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "battery_estimates_last_update_time"

    const-wide/16 v0, -0x1

    .line 87
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    .line 86
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    const-string p1, "Instant.ofEpochMilli(\n  \u2026                     -1))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/settingslib/fuelgauge/Estimate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "estimate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 72
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    const-string p1, "time_remaining_estimate_millis"

    .line 71
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 74
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result p1

    const-string v0, "time_remaining_estimate_based_on_usage"

    .line 73
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide p1

    const-string v0, "average_time_to_discharge"

    .line 75
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "battery_estimates_last_update_time"

    .line 77
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method
