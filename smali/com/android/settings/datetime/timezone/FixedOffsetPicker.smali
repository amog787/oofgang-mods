.class public Lcom/android/settings/datetime/timezone/FixedOffsetPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.source "FixedOffsetPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    sget v0, Lcom/android/settings/R$string;->date_time_select_fixed_offset_time_zones:I

    sget v1, Lcom/android/settings/R$string;->search_settings:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;-><init>(IIZZ)V

    return-void
.end method

.method private loadFixedOffsets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 63
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Etc/UTC"

    .line 64
    invoke-static {v1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    :goto_0
    const/16 v2, -0xe

    if-lt v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Etc/GMT%+d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;->loadFixedOffsets()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x54d

    return p0
.end method
