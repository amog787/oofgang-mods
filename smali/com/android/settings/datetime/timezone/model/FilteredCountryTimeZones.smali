.class public Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
.super Ljava/lang/Object;
.source "FilteredCountryTimeZones.java"


# instance fields
.field private final mCountryTimeZones:Llibcore/timezone/CountryTimeZones;

.field private final mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llibcore/timezone/CountryTimeZones;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    .line 49
    invoke-virtual {p1}, Llibcore/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ZNz2Mv2nKX1oBkvEJWubr7tgzck;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ZNz2Mv2nKX1oBkvEJWubr7tgzck;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$FsMOOJ1705oUaAkdAvlcbIu0Itk;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$FsMOOJ1705oUaAkdAvlcbIu0Itk;

    .line 54
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 55
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 56
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$new$0(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Z
    .locals 4

    .line 51
    invoke-virtual {p0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPicker()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->getNotUsedAfter()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->getNotUsedAfter()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x16806b5bc00L

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$1(Llibcore/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-virtual {p0}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    invoke-virtual {p0}, Llibcore/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZoneIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-object p0
.end method
