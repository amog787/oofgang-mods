.class Lcom/google/analytics/tracking/android/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/RateLimiter;


# instance fields
.field private mLastTrackTime:J

.field private final mMaxTokens:I

.field private final mMillisecondsPerToken:J

.field private final mTokenLock:Ljava/lang/Object;

.field private mTokens:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    .line 39
    invoke-direct {p0, v0, v1, v2}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 29
    iput p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, p1

    .line 30
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 31
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    return-void
.end method


# virtual methods
.method setLastTrackTime(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    return-void
.end method

.method setTokensAvailable(J)V
    .locals 0

    long-to-double p1, p1

    .line 49
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    return-void
.end method

.method public tokenAvailable()Z
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    iget v5, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 65
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    .line 66
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 68
    iget v5, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    add-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 71
    :cond_0
    iput-wide v1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 72
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 73
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    const/4 p0, 0x1

    .line 74
    monitor-exit v0

    return p0

    :cond_1
    const-string p0, "Excessive tracking detected.  Tracking call ignored."

    .line 76
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 77
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
