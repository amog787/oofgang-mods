.class public Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field private final mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 8

    .line 54
    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    move-result-object v4

    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    move-result-object v5

    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    move-result-object v6

    new-instance v7, Lcom/google/analytics/tracking/android/SendHitRateLimiter;

    invoke-direct {v7}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;Lcom/google/analytics/tracking/android/RateLimiter;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;Lcom/google/analytics/tracking/android/RateLimiter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 69
    iget-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string p3, "&tid"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string/jumbo p2, "useSecure"

    const-string p3, "1"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iput-object p7, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tracker name cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method getRateLimiter()Lcom/google/analytics/tracking/android/RateLimiter;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    return-object p0
.end method

.method public send(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SEND:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "&tid"

    .line 112
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Missing tracking id (%s) parameter."

    .line 113
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :cond_1
    const-string p1, "&t"

    .line 116
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Missing hit type (%s) parameter."

    .line 118
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    const-string v1, ""

    :cond_2
    const-string p1, "transaction"

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "item"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    invoke-interface {p1}, Lcom/google/analytics/tracking/android/RateLimiter;->tokenAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "Too many hits sent too quickly, rate limiting invoked."

    .line 126
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object p0, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/TrackerHandler;->sendHit(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    if-nez p2, :cond_0

    .line 168
    iget-object p0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
