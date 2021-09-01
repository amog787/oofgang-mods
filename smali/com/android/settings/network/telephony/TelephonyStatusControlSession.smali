.class public Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
.super Ljava/lang/Object;
.source "TelephonyStatusControlSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;
    }
.end annotation


# instance fields
.field private mControllers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mControllers:Ljava/util/Collection;

    .line 70
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;-><init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mResult:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lcom/android/settings/network/telephony/TelephonyStatusControlSession$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->setupAvailabilityStatus(Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setupAvailabilityStatus$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 94
    instance-of p0, p0, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    return p0
.end method

.method static synthetic lambda$setupAvailabilityStatus$2(Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;)V
    .locals 1

    .line 97
    move-object v0, p0

    check-cast v0, Lcom/android/settings/core/BasePreferenceController;

    .line 98
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    .line 99
    invoke-interface {p0, v0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;->setAvailabilityStatus(I)V

    return-void
.end method

.method static synthetic lambda$unsetAvailabilityStatus$3(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 111
    instance-of p0, p0, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    return p0
.end method

.method static synthetic lambda$unsetAvailabilityStatus$4(Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;)V
    .locals 0

    .line 114
    invoke-interface {p0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;->unsetAvailabilityStatus()V

    return-void
.end method

.method private setupAvailabilityStatus(Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$hTz47DPjQh46qdJbcdfkM3vk6bA;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$hTz47DPjQh46qdJbcdfkM3vk6bA;

    .line 94
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-class p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    .line 95
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$D4xRGPkvaUB546MXkihjw4z-3Do;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$D4xRGPkvaUB546MXkihjw4z-3Do;

    .line 96
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 101
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyStatusControlSS"

    const-string v0, "Setup availability status failed!"

    .line 103
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private unsetAvailabilityStatus(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;

    .line 111
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-class p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    .line 112
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;

    .line 113
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mResult:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TelephonyStatusControlSS"

    const-string v2, "setup availability status failed!"

    .line 85
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->mControllers:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->unsetAvailabilityStatus(Ljava/util/Collection;)V

    return-void
.end method

.method public synthetic lambda$new$0$TelephonyStatusControlSession(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$new$0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
